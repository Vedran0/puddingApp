class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]
  before_action :set_about_page, only: :index
  before_action :check_resource_permission

  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new(drink_again: false)
  end

  def edit
  end

  def create
    binding.pry
    @beer = Beer.new(beer_params)
    respond_to do |format|
      if @beer.save
        format.html { redirect_to beers_path, notice: 'Beer was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @beer.update(beer_params)
        format.html { redirect_to beers_path, notice: 'Beer was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @beer.destroy
    respond_to do |format|
      format.html { redirect_to beers_url, notice: 'Beer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_beer
      @beer = Beer.find(params[:id])
    end

    def beer_params
      params.require(:beer).permit(:name, :image, :country, :drink_again, :beer_type)
    end


    def set_about_page
      @about_page = "<p>Beer, beer, beer...</p>
                      <p>I think we plan to drink alot of it :)</p>
                      <p>Who can remember them all, especially when it is us remembering xD</p>
                      <p>I made this here so we can document it.</p>"
    end

end
