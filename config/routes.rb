Rails.application.routes.draw do
  root to: "todos#index"

  get "form", to: "todos#form"
end
