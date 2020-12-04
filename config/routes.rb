Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :users, only: [:edit, :update]
  resources :questions do
    resources :answers, only: [:index, :create]
  end
end
