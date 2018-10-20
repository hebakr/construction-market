Rails.application.routes.draw do
  get 'secured/index'
  devise_for :users
  root 'catalog#index'

  resources :catalog do
    resources :products
  end
end
