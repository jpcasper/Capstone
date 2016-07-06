class Choice < ActiveRecord::Base
  # belongs_to :answer
  belongs_to :question
  # belongs_to :user

  def question
    Question.find_by(id: self.question_id)
  end

  # def answer
  #   Answer.find_by(id: self.answer_id)
  # end
end
