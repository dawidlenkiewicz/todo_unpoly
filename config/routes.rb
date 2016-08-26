Rails.application.routes.draw do
  root to: "todos#index"

  resources :todos, only: [:index]
  patch "/toggle/:id", to: "todos#toggle", as: "toggle_todo"
  get "form", to: "todos#form"
end
