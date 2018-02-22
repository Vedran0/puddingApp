class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]
  before_action :set_tournament, only: [:new, :edit]
  before_action :get_all_places, only: [:new, :edit]

  def new
    @match = @tournament.matches.build
    @tournament.puddings.each do |pudding|
      @match.results.build(pudding_id: pudding.id, points: 0)
    end
  end

  def edit
  end

  def create
    @match = Match.new(match_params)

    respond_to do |format|
      if @match.save
        format.html { redirect_to tournament_path(@match.tournament.id), notice: 'Match was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to tournament_path(@match.tournament.id), notice: 'Match was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to tournament_path(@match.tournament.id), notice: 'Match was successfully destroyed.' }
    end
  end

  private
    def set_match
      @match = Match.includes(:results).find(params[:id])
    end

    def set_tournament
      @tournament = params[:tournament_id] ? Tournament.find(params[:tournament_id]) : Tournament.find(@match.tournament)
    end

    def match_params
      params.require(:match).permit(:place, :tournament_id, results_attributes: [:id, :pudding_id, :points])
    end

    def get_all_places
      @places = Match.all.map(&:place).uniq
    end

end
