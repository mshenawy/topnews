Rails.application.routes.draw do
  get 'sessions/new'

  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index', as: 'home'
  root :to => "users#index"

  # example of regular Route.
  get 'about' => 'pages#about', as: 'about'
  get '/signup', to: 'users#new' 
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  # example of resource route (map HTTP verbs to controller actions)
  resources :posts do 
  	resources :comments
  end

end

