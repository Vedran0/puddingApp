class Answering

  include ActiveModel::Model

  attr_accessor :answer, :question_id, :pudding_id

  def correct(question)
    answer.downcase.chomp == question.answer
  end

end