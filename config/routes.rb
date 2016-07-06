Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'

get '/games' => 'games#index'
get '/games/new' => 'games#new'

get '/new_game', to: 'games#new_game', as: 'create_game'

get 'games/:id' => 'games#show'
get 'games/:id' => 'games#edit'

patch 'games/:id' => 'games#update'
delete 'games/:id' => 'games#destroy'

get '/questions' => 'questions#index'
get '/questions/new' => 'questions#new'

post '/questions' => 'questions#create'

get 'questions/:id' => 'questions#show'
get 'questions/:id' => 'questions#edit'

patch 'questions/:id' => 'questions#update'
delete 'questions/:id' => 'questions#destroy'



get '/check/:choice_id' => 'questions#check'
get '/next_question' => 'questions#next'
end
