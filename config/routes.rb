DbcWiki::Application.routes.draw do
root :to=>"home#index"
resources :users
resource :session
resources :posts
resources :eats
resources :resources
resources :shelters
get '/users' => "users#index"
match '/login' => 'sessions#new'
match '/signup' => 'users#new'
end
