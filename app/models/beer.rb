# == Schema Information
#
# Table name: beers
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :string
#  country    :string
#  rating     :integer
#  beer_type  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Beer < ActiveRecord::Base

  validates_presence_of :name, :country, :rating, :beer_type

end
