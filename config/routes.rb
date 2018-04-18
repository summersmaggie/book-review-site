Rails.application.routes.draw do
  root :to => 'books#index'

  resources :books do
    resources :reviews, :except => [:show, :index]
  end
end
