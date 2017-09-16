class PatchNotesController < ApplicationController
  before_action :set_patch_note, only: [:show, :edit, :update, :destroy]

  def new
    @patch_note = PatchNote.new
  end

  def edit
  end

  def create
    @patch_note = PatchNote.new(patch_note_params)

    respond_to do |format|
      if @patch_note.save
        format.html { redirect_to about_path, notice: 'Patch note was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @patch_note.update(patch_note_params)
        format.html { redirect_to about_path, notice: 'Patch note was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @patch_note.destroy
    respond_to do |format|
      format.html { redirect_to patch_notes_url, notice: 'Patch note was successfully destroyed.' }
    end
  end

  private
    def set_patch_note
      @patch_note = PatchNote.find(params[:id])
    end

    def patch_note_params
      params.require(:patch_note).permit(:version, :description)
    end
end
