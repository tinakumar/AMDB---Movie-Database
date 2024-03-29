class MoviesController < ApplicationController

  def index
    @movies = Movie.order("number_of_votes DESC")

    respond_to do |format|
      format.html { render 'index' }
      format.json { render json: @movies }
    end
  end

  def show
    @movie = Movie.find_by_id(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.director_id = params[:director_id]

    if @movie.save
            redirect_to movies_url
          else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find_by_id(params[:id])
  end

  def update
    @movie = Movie.find_by_id(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.director_id = params[:director_id]

    if @movie.save
            redirect_to movies_url
          else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find_by_id(params[:id])
    @movie.destroy
        redirect_to movies_url
      end
    end

