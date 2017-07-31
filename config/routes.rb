Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  resources :microposts
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome', as: 'home'
  root :to => "pages#welcome"

  # example of regular Route.
  get 'about' => 'pages#about', as: 'about'
  get 'welcome' => 'pages#welcome', as: 'welcome'
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

