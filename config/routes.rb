Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home'

  # example of regular Route.
  get 'about' => 'pages#about', as: 'about'

  # example of resource route (map HTTP verbs to controller actions)
  resources :posts do 
  	resources :comments
  end

end
