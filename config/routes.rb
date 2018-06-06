Rails.application.routes.draw do
  get 'navbar', to: 'pages#navbar', as: 'navbar'
  root to: 'pages#home'
end
