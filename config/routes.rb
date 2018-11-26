Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'sports#index'
    end
    root to: 'devise/sessions#new'
  end

  get 'dashboard', to: 'users#profile'
  resources :events, only: :index
  resources :sports, only: [:show, :index] do
    resources :events, only: [:show, :index] do
      resources :bookings
    end
  end
end


# Rails.application.routes.draw do
#   devise_for :users
#   get 'dashboard', to: 'users#profile'
#   resources :events, only: :index
# resources :sports, only: [:show, :index] do
#   resources :events, only: [:show, :index] do
#     resources :bookings
#   end
# end
#  root "pages#home"
# end
