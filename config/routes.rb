Rails.application.routes.draw do
  get 'navbar', to: 'pages#navbar', as: 'navbar'
  get 'fade', to: 'pages#fade', as: 'fade'

  root to: 'pages#home'
end
