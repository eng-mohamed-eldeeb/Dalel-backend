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
  # recomendation routes
  # <<< setting the data
  post 'eras/:id/points', to: 'eras#add_points'
  post 'sub_eras/:id/points', to: 'sub_eras#add_points'
  post 'characters/:id/points', to: 'characters#add_points'
  post 'events/:id/points', to: 'events#add_points'
  # <<< getting the data
  get 'characters/dalil/get_four', to: 'characters#get_recommenderd_four'
  get 'events/dalil/get_four', to: 'events#get_4_recommended_events'

  post 'sub_era/:id/points', to: 'sub_eras#add_points'
  get 'characters/search', to: 'characters#search'
  get 'events/search', to: 'events#search'
  get 'sub_eras/search', to: 'sub_eras#search'
  get 'characters/see_all', to: 'characters#see_all'
  get 'events/see_all', to: 'events#see_all'
  get '/auth/:provider/callback', to: 'sessions#oniauth'


  # user saved routes
  post '/users/:user_id/saveds', to: 'saved#create'
  get '/users/:user_id/saveds', to: 'saved#index'
  delete '/users/:user_id/saveds', to: 'saved#remove'
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
  post '/cart/products/add', to: 'carts#add_product'
  get '/cart/details', to: 'carts#get_cart_details'
  put '/cart/increment_and_decrement', to: 'carts#increment_and_decrement'
  delete '/cart/remove_product', to: 'carts#remove_product'
  put 'cart/update_quantity', to: 'carts#update_quantity'
  get 'cart', to: 'carts#cart_details'
  delete 'cart/products/remove', to: 'cart#remove_product'



end
