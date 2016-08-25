Rails.application.routes.draw do
  root to: "todos#index"

  resources :todos, only: [:index, :complete]
  get "form", to: "todos#form"
end
