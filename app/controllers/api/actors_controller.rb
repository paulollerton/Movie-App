class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render "actor_index.json.jbuilder"
  end

  def show
    @actor = Actor.find(params[:id])
    render
  end

  def create

    @actor = Actor.new(
      id: params[:id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for]
      )

    @actor.save

    render "actor_show.json.jbuilder"

  end

  def update
    
    @actor = Actor.find(params[:id])

    @actor.id = params[:id] || @actor.id
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for

    @actor.save

    render "actor_show.json.jbuilder"

  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    render json: {message: "Actor Deleted."}
  end
  
end
