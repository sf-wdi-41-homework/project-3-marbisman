Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', :to => 'sessions#new', :as => :login
  get '/auth/spotify/callback', :to => 'sessions#create'
  get '/auth/failure', :to => 'sessions#failure'
end
