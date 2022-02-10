Rails.application.routes.draw do


  Rails.application.routes.draw do
  resources :comments
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "movies#index"
  # Defines the root path route ("/")
  # root "articles#index"
    resources :movies do
      resources :comments
    end
end
