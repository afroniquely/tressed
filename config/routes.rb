Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :posts

  get '/posts' => 'posts#index'

  get '/about' => 'welcome#about'

  get '/intake' => 'welcome#intake'

  root 'welcome#index'

  resources :posts, only: [:show]

  root to: "posts#show"
end
