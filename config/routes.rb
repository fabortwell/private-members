Rails.application.routes.draw do
# config/routes.rb
devise_for :users, sign_out_via: [ :get, :delete ]

  root "events#index"

  resources :events do
    resources :event_attendances, only: [ :create, :destroy ]
  end

  resources :users, only: [ :show ]
end
