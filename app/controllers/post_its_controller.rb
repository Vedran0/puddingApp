class PostItsController < ApplicationController
  before_action :set_post_it, only: [:destroy]

  def index
    @post_its = PostIt.all
  end

  def new
    @post_it = PostIt.new
  end

  def create
    @post_it = PostIt.new(post_it_params)

    respond_to do |format|
      if @post_it.save
        format.html { redirect_to post_its_path, notice: 'Post it was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @post_it.destroy
    respond_to do |format|
      format.html { redirect_to post_its_url, notice: 'Post it was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_post_it
      @post_it = PostIt.find(params[:id])
    end

    def post_it_params
      params.require(:post_it).permit(:pudding_id, :message)
    end
end
