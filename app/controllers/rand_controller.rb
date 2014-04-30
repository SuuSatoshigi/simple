# encoding: utf-8

class RandController < ApplicationController

  #can get the rand once a day
  def index
    #less interface to get the user id
    user_id = 1
    
    rand_score

    @score = UserScore.set_score(user_id,@score)
    
  end


  private
  def rand_score
    first = rand(10000)
    second = rand(10000)
    third = rand(10000)
    final = (first*0.5 + second*0.3 + third*0.2).floor

    if final <= 5000
      @score = 0
    elsif final > 5000 && final <= 8000
      @score = 1
    elsif final > 8000 && final <= 10000
      @score =2
    end
  end
end

