class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update, :destroy]
  before_action :check_resource_permission

  def edit
    session[:return_to] ||= request.referer
  end

  def update
    if @setting.update(setting_params)
      redirect_to session.delete(:return_to) || root_path, notice: 'Your settings are saved.'
    else
      render :edit
    end
  end

  private
    def set_setting
      @setting = Setting.find(current_pudding.setting.id)
    end

    def setting_params
      params.require(:setting).permit(:background, :post_it_color, :snow_switch, :christmas_lights_switch)
    end

    def to_param
      "#{current_pudding.name}"
    end

end
