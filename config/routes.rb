Rails.application.routes.draw do
  resources :ducks, only: [:index]
  resources :students, only: [:index]
  get "students/index", to: "students#index" 
  get "students/new", to: "students#new"
  post "students/new", to: "students#create"
  get "students/show/:id", to: "students#show"
  get "students/edit/:id", to: "students#edit"
  patch "students/edit/:id", to: "students#update"
  get "ducks/index", to: "ducks#index"
  get "ducks/new", to: "ducks#new"
  post "ducks/new", to: "ducks#create"
  get "ducks/show/:id", to: "ducks#show"
  get "ducks/edit/:id", to: "ducks#edit"
  patch "ducks/edit/:id", to: "ducks#update"
  
end
