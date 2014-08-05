Rails.application.routes.draw do
  # Routes for the Joke resource:
  get '/sessions/destroy' => 'sessions#destroy'
  get '/sessions/create' => 'sessions#create'
  get '/sessions/new' => 'sessions#new'
  get '/home' => 'application#home'
  get '/new_joke' => 'jokes#new'
  get '/create_joke' => 'jokes#create'

  # READ
  get '/jokes' => 'jokes#index'
  get '/jokes/:id' => 'jokes#show'

  # UPDATE
  get '/jokes/:id/edit' => 'jokes#edit'
  get '/jokes/:id/update' => 'jokes#update'

  # DELETE
  get '/jokes/:id/destroy' => 'jokes#destroy'
  #------------------------------

  # Routes for the Rating resource:
  # CREATE
  get '/new_rating' => 'ratings#new'
  get '/create_rating' => 'ratings#create'

  # READ
  get '/ratings' => 'ratings#index'
  get '/ratings/:id' => 'ratings#show'

  # UPDATE
  get '/ratings/:id/edit' => 'ratings#edit'
  get '/ratings/:id/update' => 'ratings#update'

  # DELETE
  get '/ratings/:id/destroy' => 'ratings#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
 
end
