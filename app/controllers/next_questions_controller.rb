class NextQuestionsController < ApplicationController
  def next
    @question = Question.all
    @choices = @question.choices
    
    questions_used = @current_game.questions
    available_questions = Question.all.reject { |possible_question| questions_used.include?(possible_question) }

    next_question = available_questions.sample

    redirect_to "/next_question/#{next_question.id}"
  end
end
