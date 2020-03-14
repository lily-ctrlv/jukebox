Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  # get 'event_tracks/:id/mark_as_done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :events, only: [ :index, :show, :new, :create ] do
    resources :event_tracks, only: [:index, :show ] do
      resources :bids, only: [ :index, :show, :new, :create ]
    end
  end

  resources :tracks, only: [ :index, :show ] do
    resources :bids, only: [ :index, :show, :new, :create ]
  end

  resources :event_tracks, only: [ :new, :create, :update, :destroy ]

  resources :tracks, only: [ :index, :show ]

  resources :users, only: [ :show ] do
    resources :bids, only: [ :index, :show ]
  end
end
