Rails.application.routes.draw do
  resources :products
  resources :comments
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get  '/about',   to: 'home#about'
  get  '/contact', to: 'home#contact'
  get  '/shop',    to: 'home#shop'

  root 'home#index'

  authenticated :user do
    root to: 'home#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')

end
