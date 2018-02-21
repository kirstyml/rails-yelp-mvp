Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # GET "restaurants"

  # GET "restaurants/new"
  # POST "restaurants"

  # GET "restaurants/:id"

  # GET "restaurants/:id/reviews/new"
  # POST "restaurants/:id/reviews"

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end
end
