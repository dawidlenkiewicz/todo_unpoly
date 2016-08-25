Rails.application.routes.draw do
  root to: "todos#index"

  get "test", to: "todos#test"
  get "form", to: "todos#form"
end
