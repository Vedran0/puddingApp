class ChristmasSong

  include ActiveModel::Model

  attr_accessor :sequence

  validate :icons_sequence

  def icons_sequence
  	sequence.split(",") == sequence(",").sort
  end

end