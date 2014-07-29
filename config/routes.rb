Rails.application.routes.draw do
  get '/myindex' => 'application#index'
  get '/my/:id' => 'application#show'
  get '/new_gif' => 'application#new'
  get '/create_gif' => 'application#new'
  get '/make_gif' => 'application#create'
  get '/my/:id/edit' => 'application#edit'
  get '/update_gif/:id' => 'application#update'
  get '/gifs/:id/destroy' => 'application#destroy'
end
