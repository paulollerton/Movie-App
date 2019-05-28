Rails.application.routes.draw do
  
  namespace :api do

    get "/movies" => "movies#index"
    get "/movie/:id" => "movies#show"
    post "/movie" => "movies#create"
    patch "/movie/:id" => "movies#update"
    delete "/movie/:id" => "movies#destroy"

    get "/actors" => "actors#index"
    get "actor/:id" => "actors#show"
    post "/actor" => "actors#create"
    patch "actor/:id" => "actors#update"
    delete "actor/:id" => "actors#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

  end

end
