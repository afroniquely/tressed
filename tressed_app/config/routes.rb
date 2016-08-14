Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :posts

  get '/posts' => 'posts#index'

  get '/about' => 'welcome#about'

  root 'welcome#index'
end
