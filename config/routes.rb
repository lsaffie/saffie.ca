SaffieCa::Application.routes.draw do
  devise_for :users

  resources :users

  resources :tags

  resources :posts do
    resources :comments
  end

  root :to => "posts#index"


end
