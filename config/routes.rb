Uneekify::Application.routes.draw do
  root :to => 'home#index'

  resources :users, :password, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

#login views

  get '/login' => 'session#new'
  post '/login' => 'search#lookup'
  delete '/login' => 'session#destroy'

#search views

  get '/search' => 'search#lookup'
  post '/search' => 'search#return'
end
