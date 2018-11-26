Rails.application.routes.draw do
  devise_for :users
  get 'dashboard', to: 'users#profile'
  resources :events, only: :index
resources :sports, only: [:show, :index] do
  resources :events, only: [:show, :index] do
    resources :bookings
  end
end
 root "pages#home"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
