Rails.application.routes.draw do

  resources :patch_notes
  resources :post_its, path: "notes"
  root "pages#home"
  get "toolkit", to: "pages#toolkit"
  get "about", to: "pages#about"
  devise_for :puddings
  resources :questions
  resources :answerings,    only: [:new, :create]
  get "settings", to: "settings#edit"
  resources :settings,      only: [:update]
  resources :songs,         only: [:index, :new, :create, :edit, :update, :destroy], path: "jukebox"
  resources :beers,         only: [:index, :new, :create, :edit, :update, :destroy], path: "tasting_center"
  resources :things,        only: [:index, :new, :create, :edit, :update, :destroy], path: "bucketlist"
  get "change_status", to: "things#change_status"
  resources :tournaments,   only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :matches,       only: [:new, :create, :edit, :update, :destroy]

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end

end