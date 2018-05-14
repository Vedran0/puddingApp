Rails.application.routes.draw do

  resources :visited_places
  root "pages#home"
  resources :patch_notes
  resources :post_its, path: "notes"
  get "toolkit", to: "pages#toolkit"
  get "about", to: "pages#about"
  devise_for :puddings
  resources :issues
  put "issue_resolve", to: "issues#resolve"
  resources :questions
  resources :answerings,        only: [:new, :create]
  get "settings", to: "settings#edit"
  resources :settings,          only: [:update]
  resources :songs,             only: [:index, :new, :create, :edit, :update, :destroy], path: "jukebox"
  resources :song_of_the_days,  only: [:index], path: "time-travel"
  get "song-of-the-day", to: "song_of_the_days#show", as: "song_of_the_day"
  resources :beers,             only: [:index, :new, :create, :edit, :update, :destroy], path: "tasting-center"
  resources :things,            only: [:index, :new, :create, :edit, :update, :destroy], path: "bucketlist"
  resources :holidays,          only: [:index, :show, :new, :create, :edit, :update, :destroy]
  get "change_status", to: "things#change_status"
  resources :tournaments,       only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :matches,           only: [:new, :create, :edit, :update, :destroy] do
    get :autocomplete_place, :on => :collection
  end

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end

end