Rails.application.routes.draw do
  resources :products
  resources :comments
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/shop'

 root 'home#index'

end
