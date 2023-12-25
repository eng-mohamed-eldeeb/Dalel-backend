Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'application#confirmed'
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    registrations: 'users/registrations', # Specify the custom controller for registrations
    sessions: 'users/sessions', # Specify the custom controller for sessions
    passwords: 'users/passwords'  # Specify the custom controller for passwords
  }

  get '/auth/:provider/callback', to: 'sessions#oniauth'

  # historical library routes
  resources :sub_eras, only: [:index]
    # Defines the root path route ("/")
  # root "articles#index"
end
