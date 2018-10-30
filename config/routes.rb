Rails.application.routes.draw do
  get 'secured/index'
  devise_for :users
  root 'catalog#index'

  resources :catalog do
    resources :brands do
      resources :products
    end
  end

  scope :dashboard do
    root 'dashboard#index'
  end

  get 'dashboard(*x)' => 'dashboard#index'
end
