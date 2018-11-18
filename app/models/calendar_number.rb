class CalendarNumber < ActiveRecord::Base

	belongs_to :pudding

	def numbers_drawn
		self.numbers ? self.numbers.split(",") : []
	end

	def add_number(number)
		unless self.numbers_drawn.include?(number)
			self.numbers = (numbers_drawn.push(number)).join(",")
			save
		end
	end

end
