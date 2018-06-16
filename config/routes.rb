Rails.application.routes.draw do
  get 'navbar', to: 'pages#navbar', as: 'navbar'
  get 'words', to: 'pages#words', as: 'words'
  root to: 'pages#home'
end
