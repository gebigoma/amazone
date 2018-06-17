Rails.application.routes.draw do
  root 'authors#index'
  get '/authors' => 'authors#index'
  get '/authors/new' => 'authors#new', as: :new_author
  get '/authors/:id' => 'authors#show', as: :author
  post '/authors' => 'authors#create'


  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'
end
