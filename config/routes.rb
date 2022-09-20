Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  constraints subdomain: ENV['SUBDOMAIN_CONSOLE'] do
    scope module: :console, as: :console do
      root to: 'dashboard#index'
    end
  end

  # Defines the root path route ("/")
  root to: 'home#index'
end
