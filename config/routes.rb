Rails.application.routes.draw do
  root :to => 'books#index'

  get '/alphabetize', to: 'books#alpha_index'

  get '/year', to: 'books#year_index'


  resources :books, path: '/' do
    resources :reviews, :except => [:show, :index]
  end
end
