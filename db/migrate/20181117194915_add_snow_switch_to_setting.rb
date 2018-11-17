class AddSnowSwitchToSetting < ActiveRecord::Migration
  def change
  	add_column :settings, :snow_switch, :boolean, default: false
  end
end
