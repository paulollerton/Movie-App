class Api::MoviesController < ApplicationController

  def first_movie_action
    @movie = Movie.first
    render "first_movie.json.jbuilder"
  end

  def all_movies_action
    @movies = Movie.all
    render "all_movies.json.jbuilder"
  end

end