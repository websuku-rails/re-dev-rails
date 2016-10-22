Rails.application.routes.draw do
  devise_for :users
  root :to => "static#home"

  resources :user_profs do
    get :joins, on: :member
  end
  resources :events do
    resource :joins, only: [:create, :destroy]
  end
  resources :places
  resources :comments

  get 'check_user_prof', to: 'user_profs#check'
end
