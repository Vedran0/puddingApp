class AddPathNameToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :path_name, :string
  end
end
