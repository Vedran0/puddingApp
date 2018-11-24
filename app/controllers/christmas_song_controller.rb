class ChristmasSongController < ApplicationController
	before_action :set_about_page, only: :compose

	def compose
		@calendar_numbers = current_pudding.calendar_number
	end

	def check_sequence
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

	    def set_about_page
	      @about_page = "<p>That calendar items collecting weren't for nothing.</p>
	                    <p>Click items in bottom window to compose poem.</p>
	                    <p>You can click on attached items to undo.</p>
	                    <p>Have fun!</p>"
	    end
end