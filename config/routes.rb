Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  root "items#index"
  resources :items, only: [:index, :show , :edit, :new, :create] do
    collection do
      get 'category_children',defaults:{format:'json'}
      get 'category_grandchildren',defaults:{format:'json'}
    end
  end
  resources :images, only: [:index]
  resources :users, only: [:new]
end
