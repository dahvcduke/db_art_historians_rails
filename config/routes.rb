Rails.application.routes.draw do
  namespace :admin do
      resources :historians

      root to: "historians#index"
    end
  apipie
  resources :historians
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "landing#index"
  get 'landing/about'
  get 'landing/facts'
end
