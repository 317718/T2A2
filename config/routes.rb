Rails.application.routes.draw do
  get 'categories/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "stores/new", to: "stores#new"
  post "stores", to: "stores#create"
  get "stores", to: "stores#index"
  get "stores/:id", to: "stores#show", as: "store"
  get "stores/:id/edit", to: "stores#edit", as: "edit"
  patch "stores/:id", to: "stores#update"
  delete "stores/:id", to: "stores#destroy", as: "destroy_store"

  get "categories/new", to: "categories#new"
  post "categories/new", to: "categories#create"
  get "categories", to: "categories#index"
  get "categories/:id/edit", to: "categories#edit", as: "categories_edit"
  post "categories/:id/edit", to: "categories#update"
  delete "categories/:id", to: "categories#destroy", as: "destroy_categories"

  get "items/new", to: "items#new"
  post "items", to: "items#create"
  get "items", to: "items#index"
  get "items/:id", to: "items#show", as: "item"
  get "items/:id/edit", to: "items#edit", as: "edit_item"
  patch "items/:id", to: "items#update" 
  delete "items/:id", to: "items#destroy", as: "destroy_item"

  post "items/:id/buy", to: "items#buy", as: "buy"
  get "items/:id/success", to: "items#success", as: "success"
  get "items/:id/cancel", to: "items#cancel", as: "cancel"


  root to: "pages#index"
end
