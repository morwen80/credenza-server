Rails.application.routes.draw do
  resources :lists, only: [:index, :show]
  resources :food_units
end
