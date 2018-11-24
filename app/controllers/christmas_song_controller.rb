class ChristmasSongController < ApplicationController

	def compose
		@calendar_numbers = current_pudding.calendar_number
	end

	def check_sequence
		binding.pry
		if ChristmasSong.new(christmas_song_params).valid?
			current_pudding.setting.update(christmas_song_solved: true)
			redirect_to finished_song_path
		else
			redirect_to compose_path, alert: "Try Again"
		end

	end

	def christmas_song
		
	end

	private

		def christmas_song_params
			params.require(:christmas_song).permit(:sequence)
		end

end