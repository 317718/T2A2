Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "stores/new", to: "stores#new"
  post "stores", to: "stores#create"
  get "stores", to: "stores#index"
  get "stores/:id", to: "stores#show", as: "store"
  get "stores/:id/edit", to: "stores#edit", as: "edit"
  put "stores/:id", to: "stores#update"
  delete "stores/:id", to: "stores#destroy", as: "destroy_store"
  root to: "pages#index"
end
