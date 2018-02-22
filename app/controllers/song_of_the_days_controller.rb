class SongOfTheDaysController < ApplicationController
  before_action :set_about_page, only: :index

  def show
    @song_of_the_day = SongOfTheDay.last
  end

  def index
    @song_of_the_days = SongOfTheDay.all.order(created_at: :desc).page(set_page).per(2)
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def set_page
    page = 1
    page = params[:page]
    page = SongOfTheDay.find_by(of_the_day: params[:date_picked].to_date).page if params[:date_picked]
    page
  end

    def set_about_page
      @about_page = "<p>This is \"Songs of the Day\" list.</p>
                      <p>Sometimes it's good to look back a little...</p>
                      <p>...just to remember those good old days :)</p>"
    end

end