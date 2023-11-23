Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'application#confirmed'
  devise_for :users, controllers: { confirmations: 'users/confirmations' }, defaults: { format: :json }
  # Defines the root path route ("/")
  # root "articles#index"
end
