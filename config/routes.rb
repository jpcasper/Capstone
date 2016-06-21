Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'

get '/games' => 'games#index'
get '/games/new' => 'games#new'

post '/games' => 'games#create'

get 'games/:id' => 'games#show'
get 'games/:id' => 'games#edit'

patch 'games/:id' => 'games#update'
delete 'games/:id' => 'games#destroy'


end
