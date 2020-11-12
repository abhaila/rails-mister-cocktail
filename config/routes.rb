Rails.application.routes.draw do
  resources :cocktails do
    resources :doses
  end

  resources :ingredients, only: [ :show]

  resources :doses, only: [:destroy]
end
