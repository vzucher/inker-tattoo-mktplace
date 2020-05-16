Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'thankyou', to: 'pages#thankyou'
  get 'specialties/:id', to: 'specialties#show', as: :specialty
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tattoo_artists, only: %i[index show] do
    resources :tattoo_requests
  end
end
