Rails.application.routes.draw do

  get 'user/quotation' => 'catalog#quotation_request'
  post 'user/update_request' => 'catalog#update_request'

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
