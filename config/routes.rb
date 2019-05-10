Rails.application.routes.draw do
  
  get "/last_actor" => "api/actors#last_actor_action"

  get "/first_movie" => "api/movies#first_movie_action"

  get "/all_movies" => "api/movies#all_movies_action"

end
