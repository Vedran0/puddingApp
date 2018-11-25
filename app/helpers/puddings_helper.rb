module PuddingsHelper

	def other_pudding
		Pudding.where.not(id: current_pudding.id).first
	end

end