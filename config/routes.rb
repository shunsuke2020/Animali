Rails.application.routes.draw do

  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  resources :blogs do
    resource :favorites, only: [:create, :destroy]
    resources :blog_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:show, :edit, :update]
  
   resources :ganres
  
  get 'homes/about' => 'homes#about'
end

