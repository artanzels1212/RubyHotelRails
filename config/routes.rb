# Rails.application.routes.draw do
  
  
#   get 'google_sessions/create'

#   get 'google_sessions/destroy'

#   root 'home#index'
#   devise_for :users#, controllers: {sessions: "sessions"}

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end



Hotel::Application.routes.draw do

  get 'auth/:provider/callback', to: 'google_sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'google_sessions#destroy', as: 'signout'

  resources :google_sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  root to: "home#show"
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'admin', to: 'admin#dashboard', as: 'admin'
end