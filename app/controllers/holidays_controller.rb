class HolidaysController < ApplicationController
  before_action :set_holiday, only: [:show, :edit, :update, :destroy, :change_status]
  before_action :check_resource_permission
  before_action :set_about_page, only: :index

  def index
    @holidays = Holiday.order_by_date
  end

  def show
    respond_to do |format|
      format.js
    end
  end

  def new
    @holiday = Holiday.new
  end

  def edit
  end

  def create
    @holiday = Holiday.new(holiday_params)
    @holiday.date = @holiday.date.change(year: 2000).midnight
    respond_to do |format|
      if @holiday.save
        format.html { redirect_to holidays_path, notice: 'Holiday was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @holiday.update(holiday_params)
        format.html { redirect_to holidays_path, notice: 'Holiday was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @holiday.destroy
    respond_to do |format|
      format.html { redirect_to holidays_url, notice: 'Holiday was successfully destroyed.' }
    end
  end


  private
    def set_holiday
      @holiday = Holiday.find(params[:id])
      # @holiday.date = @holiday.date.change(year: 2001) if @holiday.date < Holiday.today
    end

    def holiday_params
      params.require(:holiday).permit(:name, :date, :message)
    end

    def set_about_page
      @about_page = "<p>What use is of Holiday if we dont remember to celebrate it.</p>
                      <p>Smal portion of our best days we have written to remember.</p>
                      <p>Here they are, let's celebrate life :)</p>"
    end

end
