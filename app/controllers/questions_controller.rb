class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @choices = @question.choices
  end

def check
    @choice = Choice.find(params[:choice_id])
    question = @choice.question

    Answer.create(
      game_id: params[:game_id], #make this dynamic
      choice_id: params[:choice_id],
      user_id: current_user.id
      )

    # @answers = user_id.game_id.choice_id

    # @score = @current_game.answers.where(correct: "true").count #update this

    @correct_answer = @choice.question.choices.where(correct: "true")

    if @choice.correct == "true"
      @message = "You got it correct, you are one step closer to becoming a cajillionaire!"
    else
      @message = "You got it wrong, Go back to school"
      redirect_to '/games'
    end
  end

  def next
    @question = Question.all
    @choices = @question.choices
    
    questions_used = @current_game.questions
    available_questions = Question.all.reject { |possible_question| questions_used.include?(possible_question) }

    next_question = available_questions.sample

    redirect_to "/questions/#{next_question.id}"
  end

end
