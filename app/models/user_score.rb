class UserScore < ActiveRecord::Base

  validates_numericality_of :user_id, :greater_than_or_equal_to => 1
  validates_numericality_of :score, :greater_than_or_equal_to => 0, :only_integer => true

  def self.set_score(user_id,score)
    user_score = self.find_by_user_id(user_id)
    today = Time.now.strftime('%Y-%m-%d')
    if user_score == nil
      user_score = self.create(user_id: user_id, score: score)
    else
      if user_score.updated_at.to_s != today
        add_score = user_score.score + score
        user_score.update_attributes(score: add_score)
      end
    end
    user_score
  end
end
