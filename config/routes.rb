Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root 'devise/sessions#new' 
  end
  resources :lists do
    resources :items, only: [:create, :update, :destroy]
  end
end
