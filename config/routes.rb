Rails.application.routes.draw do
  root to: 'tattoo_artists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tattoo_artists
end
