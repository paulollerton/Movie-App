Rails.application.routes.draw do
  get "/last_actor" => "api/actors#last_actor_action"
end
