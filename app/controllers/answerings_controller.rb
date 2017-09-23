class AnsweringsController < ApplicationController
layout "answering"

  def new
    @question = Question.find(params[:question_id])
    @answering = Answering.new
  end

  def create
    @question = Question.find(params[:answering][:question_id])
    @answering = Answering.new(answering_params)
    if @answering.correct(@question)
      @question.answered.create(pudding_id: params[:answering][:pudding_id])
      redirect_to "#{request.base_url}/#{@question.path_name}", notice: "Congrats! You have unlocked new feature!"
    else
      flash.now[:alert] = "That is not correct :("
      render 'new'
    end
  end

  private

    def answering_params
      params.require(:answering).permit(:pudding_id, :question_id, :answer)
    end

end