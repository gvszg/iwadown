Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'
  resources :events
end
