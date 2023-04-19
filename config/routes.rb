Rails.application.routes.draw do
  resources :pdrs

  devise_for :users
  get 'home/index'
  get 'home/tests'
  get 'home/rules'
  get 'home/admins'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
