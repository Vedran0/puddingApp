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
    "<div class='winner-ribbon-wrapper'><div class='winner-ribbon'>1.</div></div>".html_safe if !tournament.active? && pudding.winning(tournament)
  end

end
