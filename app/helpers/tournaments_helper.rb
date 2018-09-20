module TournamentsHelper

  def time_left(tournament)
    if tournament.active?
      distance_of_time_in_words(DateTime.now, tournament.end_date, options = {})+" left"
    else
      "Finished"
    end
  end

  def scoreboard(tournament)
    scoreboard = ""
    tournament.puddings.each_with_index do |pudding, index|
      scoreboard += "#{pudding.name}(#{tournament.pudding_points(pudding)})"
      scoreboard += " - " if index+1 < tournament.puddings.size
    end
    scoreboard
  end

  def score_color(pudding, tournament)
    unless tournament.active?
      pudding.winning(tournament) ? "winning" : "losing"
    else
      ""
    end
  end

  def winner_ribbon(pudding, tournament)
    render 'tournaments/trophy', width: 20 if !tournament.active? && pudding.winning(tournament)
  end

end
