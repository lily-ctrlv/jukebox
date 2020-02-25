Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :event_tracks, except: :destroy do
  resources :bids, only: [ :new, :create ]
end

resources :bids, except: [ :show, :destroy, :new, :create]

resources :events, only: [:show, :new]

resources :users do
  resources :bids, only: [ :index, :show ]
  end
end
