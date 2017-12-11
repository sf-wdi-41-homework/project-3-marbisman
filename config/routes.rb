Rails.application.routes.draw do
  root 'users#index'

  get '/auth/spotify/callback', :to => 'users#spotify'

  get '/profile', to: 'users#show', as: 'user'
  get '/music', to: 'users#music', as: 'music'

  get '/auth/failure', :to => 'sessions#failure'
  get '/logout', :to => 'sessions#destroy', :as => "logout"

end
