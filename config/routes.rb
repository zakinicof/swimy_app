Rails.application.routes.draw do
  devise_for :users
  root to: "lessons#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lessons, only: :index
  resources :users, only: [:index, :show, :edit]
end
