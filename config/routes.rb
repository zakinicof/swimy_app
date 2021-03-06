Rails.application.routes.draw do
  devise_for :users
  root to: "lessons#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit] do
    resources :lessons, only: [:index, :show, :new, :create, :edit]
  end
  post "users/:user_id/lessons/:lesson_id", to: "lessons#update"
end
