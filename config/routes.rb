Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'events#index'
  get 'ui(/:action)', controller: 'ui'
  resources :events do
    collection do
      get "search", to: "events#search"
    end
  end
end