class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update, :destroy]

  def edit
  end

  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to root_path, notice: 'Your settings are saved.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    def set_setting
      @setting = Setting.find(current_pudding.setting.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setting_params
      params.require(:setting).permit(:background, :post_it_color)
    end

    def to_param
      "#{current_pudding.name}"
    end

end
