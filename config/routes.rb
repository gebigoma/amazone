Rails.application.routes.draw do
  root 'authors#index'
  get '/authors' => 'authors#index'
  get '/authors/:id' => 'authors#show', as: :author

  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'
end
