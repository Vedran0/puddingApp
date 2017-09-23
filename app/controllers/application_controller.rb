class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_pudding!
  before_action :set_pudding_quote, if: :devise_controller?

  def set_pudding_quote
    unless params[:hint_step]
      @random_quote = get_default_quotes.sample()
    else
      params[:hint_step] = params[:hint_step].to_i>5 ? 4 : params[:hint_step].to_i+1
      @random_quote = get_hint[params[:hint_step].to_i-1]
    end
    if params[:pudding] && params[:pudding][:name].chomp.downcase == "beta"
      @random_quote = "Your name, not your nickname!"
      params[:hint_step] = 0
    elsif params[:pudding] && params[:pudding][:name] == "elizabeta"
      @random_quote = "Capital \"E\" would be nice..."
      params[:hint_step] = 0
    end
  end

  def get_default_quotes
    quotes = ["The soft heart is a heart made of pudding!",
              "A beautiful pudding delights the eye; a wise pudding, the understanding; a pure one, the soul.",
              "He was a wise man who invented pudding.",
              "A room without puddings is like a body without a soul.",
              "So many puddings, so little time.",
              "Take into account that great love and great achievements involve great pudding.",
              "In the end, it’s not the years in your life that count. It’s the number of puddings you ate.",
              "Without pudding, life would be a mistake.",
              "We accept the pudding we think we deserve.",
              "Good friends, good pudding, and a sleepy conscience: this is the ideal life.",
              "We are all in the gutter, but some of us are looking at the pudding.",
              "The man who does not eat pudding has no advantage over the man who cannot eat pudding."
                 ]
  end

  def get_hint
    quotes = ["Here you go: MySuperproofPassword290918102208",
              "I'm joking, why would i gave it so easly dummy xD",
              "Ok, i'll help you, hit that button one more time :)",
              "People keep passwords on their phone...",
              "...in notes.",
              "Open your phone and look it up!"]
  end

  def check_resource_permission
    question = Question.find_by(resource: params[:controller])
    unless current_pudding.answered(question)
      redirect_to new_answering_path(pudding_id: current_pudding.id, question_id: question.id)
    end
  end

end