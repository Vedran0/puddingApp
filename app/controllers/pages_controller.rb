class PagesController < ApplicationController
before_action :set_about_page, only: :toolkit
before_action :check_resource_permission, only: :home

  def home
    @random_thing = Thing.to_do.sample
    @last_tasted_beer = Beer.last
    @puddings = Pudding.all
    @last_matches = Match.last(3)
    @last_post_it = PostIt.where.not(pudding_id: current_pudding.id).last
  end

  def christmas_calendar
    # @about_page = ""
    @calendar_numbers = current_pudding.calendar_number || current_pudding.create_calendar_number
    @calendar_numbers_left = (1..24).to_a.map(&:to_s).shuffle-@calendar_numbers.numbers_drawn
  end

  def toolkit
    
  end

  def about
    @patch_notes = PatchNote.all.order(created_at: :desc)
    current_pudding.setting.update(last_patch_seen: @patch_notes.first.id) if params[:new_patch_note] == "t"
  end

  private

    def set_about_page
      @about_page = "<p>This is toolkit.</p>
                    <p>Every project has one and this is a place where magic is born.</p>
                    <p>Here i test the looks of things.</p>"
    end

end