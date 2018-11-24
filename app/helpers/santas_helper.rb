module SantasHelper

	def new_calendar_days
		new_days = Date.today.day-current_pudding.count_numbers_drawn
		"Open your #{new_days} new calendar #{new_days > 1 ? "days" : "day"}"
	end

end