class AddResourceToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :resource, :string
  end
end
