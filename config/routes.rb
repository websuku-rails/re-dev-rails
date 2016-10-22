Rails.application.routes.draw do
  devise_for :users
  root :to => "static#home"

  resources :user_profs
  resources :events
  resources :places
  get 'check_user_prof', to: 'user_profs#check'
end
