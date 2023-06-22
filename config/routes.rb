Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :trainers do
        resources :pokemons, only: []
        resources :teams do
          resources :pokemons, only: [:index]
        end
      end
    end
  end
end
