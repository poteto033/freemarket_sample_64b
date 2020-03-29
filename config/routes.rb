Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  root "items#index"
<<<<<<< HEAD
  resources :items, only: [:show , :edit, :new,:create]do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end
  
=======
  resources :items, only: [:index, :show , :edit, :new, :create]
  resources :images, only: [:index]
  resources :users, only: [:new]
>>>>>>> master
end
