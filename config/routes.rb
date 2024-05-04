Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  root to: 'application#confirmed'
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    registrations: 'users/registrations', # Specify the custom controller for registrations
    sessions: 'users/sessions', # Specify the custom controller for sessions
    passwords: 'users/passwords'  # Specify the custom controller for passwords
  }

  get '/auth/:provider/callback', to: 'sessions#oniauth'

  # historical library routes
  resources :sub_eras, only: [:index, :show]
  resources :characters, only: [:index, :show]
  resources :events, only: [:index, :show]
  get 'characters/:id/events', to: 'characters#events'
  # bazar routes
  get 'products/best_sales', to: 'products#get_top_selling'
  resources :products, only: [:index, :show] do
    resources :reviews, only: [:create]
    get 'reviews', to: 'reviews#get_reviews_by_product'
  end
  get 'products/catigory/:catigory', to: 'products#get_product_by_catigory'

  post 'cart', to: 'carts#create'
  post '/cart/products/add', to: 'cart#add_product'
  post 'cart/update', to: 'carts#update'

  # recomendation routes
  # <<< setting the data
  # <<< getting the data

end
