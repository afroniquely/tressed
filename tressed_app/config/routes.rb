# Rails.application.routes.draw do
#   devise_for :users
#   # get 'welcome/index'

#   resources :posts

#   root 'welcome#index'

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :posts

  get '/posts' => 'posts#index'

  root 'welcome#index'
end
