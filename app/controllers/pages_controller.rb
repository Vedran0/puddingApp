class PagesController < ApplicationController
before_action :set_about_page, only: :toolkit

  def home
  end

  def toolkit
    
  end

  def about
    @patch_notes = PatchNote.all.order(created_at: :desc)
  end

  private

    def set_about_page
      @about_page = "<p>This is toolkit.</p>
                      <p>Every project has one and this is a place where magic is born.</p>
                      <p>Here i test the looks of things.</p>"
    end

end