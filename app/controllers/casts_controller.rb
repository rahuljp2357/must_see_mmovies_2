class CastsController < ApplicationController
  before_action :set_cast, only: [:show, :edit, :update, :destroy]

  # GET /casts
  def index
    @casts = Cast.all
  end

  # GET /casts/1
  def show
  end

  # GET /casts/new
  def new
    @cast = Cast.new
  end

  # GET /casts/1/edit
  def edit
  end

  # POST /casts
  def create
    @cast = Cast.new(cast_params)

    if @cast.save
      redirect_to @cast, notice: 'Cast was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /casts/1
  def update
    if @cast.update(cast_params)
      redirect_to @cast, notice: 'Cast was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /casts/1
  def destroy
    @cast.destroy
    message = "Cast was successfully deleted."
    if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referrer, notice: message
    else
      redirect_to casts_url, notice: message
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cast
      @cast = Cast.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cast_params
      params.require(:cast).permit(:character_id, :movie_id, :actors_id)
    end
end
