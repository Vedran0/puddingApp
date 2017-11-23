class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_pudding!
  before_action :set_pudding_quote, if: :devise_controller?

  def set_pudding_quote
    @random_quote = get_default_quotes.sample()
  end

  def get_default_quotes
    quotes = ["A good pudding is a continual Christmas.",
              "Christmas, my pudding, is love in action.",
              "Christmas is a pudding stuffed with sugary goodness.",
              "My idea of Christmas, whether old-fashioned or modern, is very simple: pudding others.",
              "Christmas waves a magic wand over the world, and behold, everything is puddingy and more beautiful.",
              "He who has not Christmas in his pudding heart will never find it under a tree.",
              "Teacher says every time a bell rings, an angel gets his pudding.",
              "Blessed is the season which engages the whole world in a conspiracy of love and pudding."
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

  private

    def after_sign_out_path_for(pudding)
      new_pudding_session_path
    end

end