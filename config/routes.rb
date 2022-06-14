Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolio#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'

  # Defines the root path route ("/")
  # root "articles#index"
end
