Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # pages
  get "dashboard", to: "pages#dashboard"
  get "profile/:id", to: "pages#profile", as: 'user_profile'

  # projects
  resources :projects do
    # tasks
    resources :tasks, only: [:new, :create]
  end
  resources :tasks, only: [:show, :destroy, :update, :edit]
end
