Rails.application.routes.draw do
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index', as: 'home'

  # example of regular Route.
  get 'about' => 'pages#about', as: 'about'
  get '/signup', to: 'users#new' 
  post '/signup',  to: 'users#create'

  # example of resource route (map HTTP verbs to controller actions)
  resources :posts do 
  	resources :comments
  end

end

