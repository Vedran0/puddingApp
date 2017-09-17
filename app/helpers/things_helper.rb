module ThingsHelper

  def achievement_heaviness_text(achievement_heaviness)
    case achievement_heaviness
    when 1
      "Very Easy"
    when 2
      "Easy"
    when 3
      "We Will Do It"
    when 4
      "We CAN Do it"
    when 5
      "One Day"
    end
  end

    def achievement_heaviness_color(achievement_heaviness)
    case achievement_heaviness
    when 1
      "#388e3c"
    when 2
      "#1976d2"
    when 3
      "#fbc02d"
    when 4
      "#f57c00"
    when 5
      "#c62828"
    end
  end

end
