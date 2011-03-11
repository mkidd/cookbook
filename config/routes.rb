Cookbook::Application.routes.draw do
  root :to => "recipes#index"
  match 'login' => "sessions#new", :as => "login"
  match 'logout' => "sessions#destroy", :as => "logout"
  resources :measurements, :recipes, :ingredients, :direction
  resource :session
  
#resources :recipes do
#resources :ingredients
#end

#resources :recipes do
#resources :directions
#end
end
