Rails.application.routes.draw do

  resources :patch_notes
  resources :post_its
  root "pages#home"
  get "toolkit", to: "pages#toolkit"
  get "about", to: "pages#about"
  devise_for :puddings
  resources :settings,      only: [:edit, :update]
  resources :songs,         only: [:index, :new, :create, :edit, :update, :destroy], path: "jukebox"
  resources :beers,         only: [:index, :new, :create, :edit, :update, :destroy], path: "tasting_center"
  resources :things,        only: [:index, :new, :create, :edit, :update, :destroy], path: "bucketlist"
  resources :tournaments,   only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :matches,       only: [:new, :create, :edit, :update, :destroy]

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end

end