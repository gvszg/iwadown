Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'events#index'
  get 'ui(/:action)', controller: 'ui'
  resources :events do
    collection do
      get "search", to: "events#search"
    end
  end

  # Register
  get '/register', to: 'users#new'
  resources :users, only: [:create, :show]

  # Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # Facebook Authentication
  # get '/my_profile', to: 'users#index'
  # get 'auth/facebook', as: "auth_provider"
  # get 'auth/facebook/callback', to: 'users#login'

  get '/auth/:provider/callback', to:'sessions#fb_signin'
  get '/auth/failure', to: redirect('/')
end