Cookbook::Application.routes.draw do
  root :to => "recipes#index"
  match 'login' => "sessions#new", :as => "login"
  match 'logout' => "sessions#destroy", :as => "logout"
  resources :recipes do
    resources :ingredients, :directions, :measurements
  end
  resource :session, :ingredients, :directions, :measurements
end
