class PagesController < ApplicationController

  def home
  end

  def toolkit
    
  end

  def about
    @patch_notes = PatchNote.all.order(created_at: :desc)
  end

end