Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :events, only: [:index, :show, :new] do
    resources :event_tracks, only: [:index, :show]
  end
  
  resources :event_tracks, only: [:create, :new, :edit, :update] do
    resources :bids, only: [ :index, :show, :new, :create ]
  end

  # resources :bids, except: [ :show, :destroy, :new, :create]


  resources :users, only: [ :show ] do
    resources :bids, only: [ :index, :show ]
  end
end