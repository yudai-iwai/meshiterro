Rails.application.routes.draw do
resources :users, only: [:show, :edit]
resources :post_images, only: [:new, :create, :index, :show, :destroy]
devise_for :users
root to: "homes#top"
get 'homes/about', as:'about'
end
