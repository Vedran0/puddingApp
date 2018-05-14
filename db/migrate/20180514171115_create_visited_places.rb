class CreateVisitedPlaces < ActiveRecord::Migration
  def change
    create_table :visited_places do |t|
      t.string :name
      t.datetime :visited_at
      t.string :place_type

      t.timestamps null: false
    end
  end
end
