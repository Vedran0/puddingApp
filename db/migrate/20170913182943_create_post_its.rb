class CreatePostIts < ActiveRecord::Migration
  def change
    create_table :post_its do |t|
      t.integer :pudding_id
      t.string :message

      t.timestamps null: false
    end
  end
end
