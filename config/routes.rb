Rails.application.routes.draw do
  resources :resturaunts

  get 'pages/about'

  get 'pages/contact'

  root 'resturaunts#index'
  
end
