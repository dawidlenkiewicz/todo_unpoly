Rails.application.routes.draw do
  root to: "todos#index"

  resources :todos, only: [:index, :new, :create]
  patch "/toggle/:id", to: "todos#toggle", as: "toggle_todo"
  get "popup", to: "todos#popup"
  get "wow", to: "todos#wow"
  get "modal", to: "todos#modal"
end
