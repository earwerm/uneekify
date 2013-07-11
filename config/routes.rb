Uneekify::Application.routes.draw do
  root :to => 'home#index'

  resources :users, :password, :except => [:edit] do
    collection do
      get 'edit'
    end
  end


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/search' => 'search#lookup'
  post '/search' => 'search#return'
end
