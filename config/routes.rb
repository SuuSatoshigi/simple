App::Application.routes.draw do
 
  resources :rand do
    get ''                  => 'rands#index', as: :index_root
  end
 
end
