Rails.application.routes.draw do
  get 'pages/search'
  get 'welcome/index'
  
  resources :articles do
    resources :comments
  end
  
  resources :recipes do
    resources :recipe_ingredients
  end
  
  resources :ingredients do
    resources :recipe_ingredients
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
