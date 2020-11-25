Rails.application.routes.draw do
  
  get 'toppages/index'
  devise_for :users
end
