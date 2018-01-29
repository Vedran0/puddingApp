class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :edit, :update, :destroy]
  before_action :check_resource_permission

  def edit
    session[:return_to] ||= request.referer
  end

  def update
    if @setting.update(setting_params)
      redirect_to session.delete(:return_to), notice: 'Your settings are saved.'
    else
      render :edit
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
