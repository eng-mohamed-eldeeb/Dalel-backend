Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'application#confirmed'
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords'  # Specify the custom controller for passwords
  }

  get '/auth/:provider/callback', to: 'sessions#oniauth'
    # Defines the root path route ("/")
  # root "articles#index"
end
