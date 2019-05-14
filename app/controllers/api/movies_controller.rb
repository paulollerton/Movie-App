class Api::MoviesController < ApplicationController

  def index

    @movies = Movie.all
    render "index.json.jbuilder"

  end

  def show
    
    @movie = Movie.find(params[:id])
    render "show.json.jbuilder"

  end

  def create
   
    @movie = Movie.new(
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
      )
    
    @movie.save
    
    render "show.json.jbuilder"

  end

  def update
    
    @movie = Movie.find(params[:id])
    
    @movie.id = params[:id] || @movie.id
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    
    @movie.save
    
    render "show.json.jbuilder"

  end

  def destroy

    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: {message: "Movie Destroyed."}

  end

  

end