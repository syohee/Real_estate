Rails.application.routes.draw do
  
  root to: 'realestates#index'
  
  devise_for :offices, path: 'offices', controllers: { sessions: "offices/sessions", registrations: "offices/registrations" }
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  
  resources :realestates
end
