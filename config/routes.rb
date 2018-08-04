Rails.application.routes.draw do
  get 'navbar', to: 'pages#navbar', as: 'navbar'
  get 'words', to: 'pages#words', as: 'words'
  get 'quotes', to: 'pages#quotes', as: 'quotes'
  get 'fade', to: 'pages#fade', as: 'fade'

  get 'fax', to: 'pages#fax', as: 'fax'

  root to: 'pages#home'
end
