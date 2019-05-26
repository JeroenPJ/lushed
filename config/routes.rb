Rails.application.routes.draw do
  resources :lyrics, except: [:show]
  get 'lyrics/login'

  scope controller: :pages do
    get :navbar
    get :words
    get :quotes
    get :fade
    get :fax
    get :lotus
  end

  root to: 'pages#home'
end
