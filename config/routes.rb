Cookbook::Application.routes.draw do
  root :to => "recipes#index"
  resources :recipes

  get "recipe/index"

  get "recipe/show"

  get "recipe/new"

  get "recipe/edit"

  get "recipe/create"

  get "recipe/update"

  get "recipe/destroy"

  get "measurement/index"

  get "measurement/show"

  get "measurement/new"

  get "measurement/edit"

  get "measurement/create"

  get "measurement/update"

  get "measurement/destroy"

  get "ingredient/index"

  get "ingredient/show"

  get "ingredient/new"

  get "ingredient/edit"

  get "ingredient/create"

  get "ingredient/update"

  get "ingredient/destroy"

  get "direction/index"

  get "direction/show"

  get "direction/new"

  get "direction/edit"

  get "direction/create"

  get "direction/update"

  get "direction/destroy"
end
