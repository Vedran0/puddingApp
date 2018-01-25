class PagesController < ApplicationController
before_action :set_about_page, only: :toolkit
before_action :check_resource_permission, only: :home

  def home
    @song_of_the_day = SongOfTheDay.today
    @random_thing = Thing.to_do.sample
    @last_tasted_beer = Beer.last
    @puddings = Pudding.all
    @last_matches = Match.last(3)
    @last_post_it = PostIt.where.not(pudding_id: current_pudding.id).last
  end

  def toolkit
    
  end

  def about
    @patch_notes = PatchNote.all.order(created_at: :desc)
    # current_pudding.setting.update(last_patch_seen: @patch_notes.first.id) if params[:new_patch_note] == "t"
  end

  private

    def set_about_page
      @about_page = "<p>This is toolkit.</p>
                    <p>Every project has one and this is a place where magic is born.</p>
                    <p>Here i test the looks of things.</p>"
    end

end