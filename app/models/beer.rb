# == Schema Information
#
# Table name: beers
#
#  id          :integer          not null, primary key
#  name        :string
#  image       :string
#  country     :string
#  beer_type   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  drink_again :boolean
#

class Beer < ActiveRecord::Base

  validates_presence_of :name, :country, :beer_type

  scope :drink_again, -> (drink_again) { where(drink_again: drink_again) }
  scope :by_beer_type, -> (beer_type) { where(beer_type: beer_type) }

end
