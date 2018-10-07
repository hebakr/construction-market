Rails.application.routes.draw do
  get 'secured/index'
  devise_for :users
  root 'home#index'
end
