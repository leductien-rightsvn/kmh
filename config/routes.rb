Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  constraints subdomain: ENV.fetch('SUBDOMAIN_CONSOLE', nil) do
    scope module: :console, as: :console do
      root to: 'dashboard#index'
      resources :categories
    end
  end

  # Defines the root path route ("/")
  root to: 'home#index'
end
