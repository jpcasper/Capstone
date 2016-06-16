Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'

get '/games' => 'games#index'
get '/games/new' => 'games#new'

post '/games' => 'games#create'


end
