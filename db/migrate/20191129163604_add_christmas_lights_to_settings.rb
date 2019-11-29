class AddChristmasLightsToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :christmas_lights_switch, :boolean, default: false
  end
end
