Rails.application.routes.draw do

  root to: 'realestates#index'
  
  devise_for :offices, controllers: { sessions:'offices/sessions', registrations: 'offices/registrations' }
  devise_for :users, controllers: { sessions:'users/sessions', registrations: 'users/registrations' }
  
  resources :realestates do
    collection do
      get :search
    end
  end
  
  resources :profiles, only:[:show, :edit, :update]
end
