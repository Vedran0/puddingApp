class ChristmasSong

  include ActiveModel::Model

  attr_accessor :sequence

  validate :icons_sequence

  def icons_sequence
  	unless sequence.split(",").map(&:to_i) == sequence.split(",").map(&:to_i).sort
  		errors.add(:sequence, "Not good!")
  	end
  end

end