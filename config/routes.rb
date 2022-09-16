Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  constraints subdomain: 'console' do
    scope module: :console, as: :console do
      root to: 'dashboard#index'
    end
  end

  # Defines the root path route ("/")
<<<<<<< HEAD
  root to: 'home#index'
=======
  # root "articles#index"
  constraints subdomain: 'console' do
    scope module: :console, as: :console do
      resources :categories
    end
  end
>>>>>>> 3061ed5 (category-controller-fix-comment-1st)
end
