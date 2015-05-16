class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  after_action :verify_authorized, :except =>  [:index,:show]
  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all.order(created_at: :desc)
    @category = Category.all
    @subcategory = Category.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @category = Category.all
    @subcategory = Category.all
    @movie_comment = MovieComment.new
    @movie_comments = MovieComment.where(movie_id: @movie.id).all.order(created_at: :desc)
  end

  # GET /movies/new
  def new
    authorize Movie
    @movie = Movie.new
    @category = Category.all
    @subcategory = Category.all
  end

  # GET /movies/1/edit
  def edit
    authorize Movie
    @category = Category.all
    @subcategory = Category.all
  end

  # POST /movies
  # POST /movies.json
  def create
    authorize Movie
    @movie = Movie.new(movie_params)
    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    authorize @movie
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to root_path}
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    authorize @movie
    respond_to do |format|
      format.html { redirect_to movies_url }
      format.json { head :no_content }
    end
  end

  def get_from_imdb

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:name, :year, :pg, :minute, :imdbrate, :plot, :director, :writers, :stars, :poster,:category_id,:subcategory_id,:link)
    end
end
