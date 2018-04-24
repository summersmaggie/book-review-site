Rails.application.routes.draw do
  root :to => 'books#index'

  get '/alphabetize', to: 'books#alpha_index'

  get '/year', to: 'books#year_index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :books, path: '/' do
    resources :reviews, :except => [:show, :index]
  end
end
