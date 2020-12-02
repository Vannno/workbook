Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :users, only: [:edit, :update]
  resources :questions, only: [:new, :create, :destroy] do
    resources :answers, only: [:index, :create]
  end
end
