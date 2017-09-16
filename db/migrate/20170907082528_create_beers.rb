class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :image
      t.string :country
      t.integer :rating
      t.string :beer_type

      t.timestamps null: false
    end
  end
end
