class CalendarNumbersController < ApplicationController

	def add_number
		current_pudding.calendar_number.add_number(params[:number])
		respond_to do |format|
			format.js
		end
	end

end