Rails.application.routes.draw do
  root "restaurants#index"

  resources :restaurants do
	  resources :bookings
	end

  devise_for :users

  resources :users, only: [:index, :show]
end
