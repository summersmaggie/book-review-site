Rails.application.routes.draw do
  root :to => 'books#index'

  get 'books/alphabetize', to: 'books#alpha_index'


  resources :books do
    resources :reviews, :except => [:show, :index]
  end
end
