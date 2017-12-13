Rails.application.routes.draw do
  get 'playlists/search'    => 'playlists#index', as: 'search'
  post 'playlists/search'   => 'playlists#index'
  get 'playlists'           => 'playlists#index', as: 'playlists'
  post 'playlists'          => 'playlists#new', as: 'new_playlist'
  post 'playlists/:id/edit' => 'playlists#edit', as: 'edit_playlist'
  get 'playlists/:id'       => 'playlists#show', as: 'playlist'
  post 'playlists/:id'      => 'playlists#update'
  put 'playlists/:id'       => 'playlists#update'
  delete 'playlists/:id'    => 'playlists#destroy'

  root 'users#index'

  get '/auth/spotify/callback', :to => 'users#spotify'

  get '/profile', to: 'users#show', as: 'user'
  get '/music', to: 'users#music', as: 'music'

  get '/auth/failure', :to => 'sessions#failure'
  get '/logout', :to => 'sessions#destroy', :as => "logout"

end
