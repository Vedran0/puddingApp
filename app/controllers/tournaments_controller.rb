class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]
  before_action :set_tournament_players, only: :create
  before_action :set_about_page, only: :index
  before_action :check_resource_permission


  def index
    @tournaments = Tournament.all
  end

  def show
  end

  def new
    @tournament = Tournament.new
  end

  def edit
  end

  def create
    @tournament = Tournament.new(tournament_params)
    @tournament.puddings<<@tournament_players
    respond_to do |format|
      if @tournament.save
        format.html { redirect_to @tournament, notice: 'Tournament was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @tournament.update(tournament_params)
        format.html { redirect_to @tournament, notice: 'Tournament was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @tournament.destroy
    respond_to do |format|
      format.html { redirect_to tournaments_url, notice: 'Tournament was successfully destroyed.' }
    end
  end

  private
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    def set_tournament_players
      @tournament_players = Pudding.all
    end

    def tournament_params
      params.require(:tournament).permit(:name, :end_date)
    end

    def set_about_page
      @about_page = "<p>Wellcome to our ring, our stadium.</p>
                      <p>I plan to beat you in game of Yamb and i want to document it.</p>
                      <p>Let the games begin!</p>"
    end

end
