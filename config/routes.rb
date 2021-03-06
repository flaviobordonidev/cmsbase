Rails.application.routes.draw do

  root 'mockups#page_a'

  devise_for :users, path_names: {sign_in: 'login'}, path: '', controllers: { sessions: 'users/sessions' }
  resources :users

  namespace :authors do
    resources :posts, :except => [:show]
  end
  resources :posts, :only => [:index, :show]

  resources :eg_companies
  resources :eg_posts
  resources :eg_users
  
  #get 'users/index'
  get 'mockups/page_a'
  get 'mockups/page_b'
  get 'mockups/page_c'
  get 'mockups/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
