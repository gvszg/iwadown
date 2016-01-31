Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'events#index'
  get 'ui(/:action)', controller: 'ui'
  resources :events do
    collection do
      get "search", to: "events#search"
    end
  end

  # Facebook Authentication
  get '/my_profile' to: 'users#index'
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'users#login'
end