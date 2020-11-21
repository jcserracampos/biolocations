Rails.application.routes.draw do
  resources :main_companies
  resources :brands
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "home/index"
  root "home#index"
end