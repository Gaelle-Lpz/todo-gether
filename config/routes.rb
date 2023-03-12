Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # pages
  get "dashboard", to: "pages#dashboard"


  # projects
  resources :projects do
    # tasks
    resources :tasks
  end
end
