Rails.application.routes.draw do
  root to: "todos#index"

  resources :todos, only: [:index, :complete, :new, :create]
  get "test", to: "todos#test"
end
