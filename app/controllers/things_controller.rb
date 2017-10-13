class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy, :change_status]
  before_action :check_resource_permission
  before_action :set_about_page, only: :index

  def index
    @things = params[:done]=="true" ? Thing.done : Thing.to_do
    @things = @things.where(achievement_heaviness: params[:achievement_heaviness]) if params[:achievement_heaviness] && params[:achievement_heaviness] != "0"
    respond_to do |format|
      format.js
      format.html
    end
  end

  def new
    @thing = Thing.new
  end

  def edit
  end

  def create
    @thing = Thing.new(thing_params)

    respond_to do |format|
      if @thing.save
        format.html { redirect_to things_path, notice: 'Thing was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @thing.update(thing_params)
        format.html { redirect_to things_path, notice: 'Thing was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @thing.destroy
    respond_to do |format|
      format.html { redirect_to things_url, notice: 'Thing was successfully destroyed.' }
    end
  end

  def change_status
    @thing.done = !@thing.done
    @thing.done_date = @thing.done ? DateTime.now : nil
    @thing.save
    respond_to do |format|
      @thing.done ? flash.now[:notice] = "Nice! You have done a thing." : flash.now[:notice] = "Thing is undone again."
      format.js
    end
  end

  private
    def set_thing
      @thing = Thing.find(params[:id])
    end

    def thing_params
      params.require(:thing).permit(:description, :achievement_heaviness)
    end

    def set_about_page
      @about_page = "<p>Here i made space for our things</p>
                      <p>Our bucketlist things</p>
                      <p>Where we can write our goals and dreams!</p>
                      <p>Who knows... maybe... one day... we will fulfill them aaaaall :D</p>"
    end

end
