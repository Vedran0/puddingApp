class ReplaceRatingWithDrinkAgainInBeers < ActiveRecord::Migration
  def change
    remove_column :beers, :rating, :integer
    add_column :beers, :drink_again, :boolean
  end
end
