class AddNameToPudding < ActiveRecord::Migration
  def change
    add_column :puddings, :name, :string
  end
end
