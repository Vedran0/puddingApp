class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_pudding!
  before_action :set_pudding_quote, if: :devise_controller?
  before_action :get_settings

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

  def check_resource_permission
    question = Question.find_by(resource: params[:controller])
    unless current_pudding.answered(question)
      redirect_to new_answering_path(pudding_id: current_pudding.id, question_id: question.id)
    end
  end

  def get_settings
    @settings = current_pudding.setting if current_pudding
  end

  private

    def after_sign_out_path_for(pudding)
      new_pudding_session_path
    end

end