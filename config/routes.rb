Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "products#home"
  get "home" => "products#home"
  resources :products do
    resources :reviews 
  end
end
