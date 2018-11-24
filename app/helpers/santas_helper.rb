module SantasHelper

	def new_calendar_days
		"Open your #{number_of_new_calendar_days} new calendar #{number_of_new_calendar_days > 1 ? "days" : "day"}"
	end

	def number_of_new_calendar_days
		advent_days_passed = Date.today.day > 24 ? 24 : Date.today.day
		new_days = advent_days_passed-current_pudding.count_numbers_drawn
	end

end