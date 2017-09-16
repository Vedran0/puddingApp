class AddPostitTextColorToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :post_it_color, :string, default: "default"
  end
end
