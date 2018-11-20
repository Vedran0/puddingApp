module SantasHelper

	def new_calendar_days
		new_days = Date.today.day-current_pudding.calendar_number.numbers_drawn.size
		"Open your #{new_days} new calendar #{new_days > 1 ? "days" : "day"}"
	end

end