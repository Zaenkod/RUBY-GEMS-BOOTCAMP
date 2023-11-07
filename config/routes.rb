Rails.application.routes.draw do
  get 'home/index'
  # get 'static_pages/landing_page'
  get 'static_pages/privacy_policy'
  devise_for :users
  resources :courses
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "courses#index"
  # root 'static_pages#landing_page'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
end
