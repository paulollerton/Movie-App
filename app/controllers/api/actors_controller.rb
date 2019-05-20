class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all.order(age: :desc)
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
      known_for: params[:known_for],
      age: params[:age],
      gender: params[:gender]
      )

    if @actor.save
      render "actor_show.json.jbuilder"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def update
    
    @actor = Actor.find(params[:id])

    @actor.id = params[:id] || @actor.id
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.age = params[:age] || @actor.age
    @actor.gender = params[:gender] || @actor.gender

    if @actor.save
      render "actor_show.json.jbuilder"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    render json: {message: "Actor Deleted."}
  end
  
end
