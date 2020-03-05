Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :events, only: [ :index, :show, :new ] do
   resources :event_tracks, only: [:index, :show] do
      resources :bids, only: [ :index, :show, :new, :create ]
    end
  end

  resources :tracks, only: [ :index ]

  resources :users, only: [ :show ] do
    resources :bids, only: [ :index, :show ]
  end
end
