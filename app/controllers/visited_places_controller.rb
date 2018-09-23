class VisitedPlacesController < ApplicationController
  before_action :set_visited_place, only: [:show, :edit, :update, :destroy]
  before_action :set_about_page, only: :index

  # GET /visited_places
  def index
    @visited_places = VisitedPlace.all.order(visited_at: :asc)
    @region = params[:region] || "world"
  end

  # GET /visited_places/new
  def new
    @visited_place = VisitedPlace.new(place_type: params[:place_type])
  end

  # POST /visited_places
  def create
    @visited_place = VisitedPlace.new(visited_place_params)

    respond_to do |format|
      if @visited_place.save
        format.html { redirect_to visited_places_path, notice: 'Visited place was successfully added.' }
      else
        format.html { render :new }
      end
    end
  end

  # DELETE /visited_places/1
  def destroy
    @visited_place.destroy
    respond_to do |format|
      format.html { redirect_to visited_places_url, notice: 'Visited place was successfully removed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visited_place
      @visited_place = VisitedPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visited_place_params
      params.require(:visited_place).permit(:name, :visited_at, :place_type)
    end

    def set_about_page
      @about_page = "<p>You and me</p>
                      <p>Alone against the world!</p>"
    end
end
