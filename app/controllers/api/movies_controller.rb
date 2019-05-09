class MoviesController < ApplicationController

  def last_actor_action
    @actor = Actor.last
    render "last_actor.json.jbuilder"
  end

end