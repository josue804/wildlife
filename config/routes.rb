Rails.application.routes.draw do
  root to: 'regions#index'
  resources :regions do
    resources :animals
  end

  resources :animals do
    resources :sightings
  end
end
