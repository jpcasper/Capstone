class GamesController < ApplicationController

  before_action :authenticate_user!

  def index
    if current_user
      @games = Game.where(user_id: current_user.id)
    else
      @games = Game.all
    end
  end

  def show
    @question = Question.find(params[:id])
    @choices = @question.choices
  end

    def fifty_fifty
    if @choice.correct == "false"
      @choice.pop
    end
  end


  def new_game
    new_game = Game.new(user_id: current_user.id)

    if new_game.save
      redirect_to '/next_question'
    else
      redirect_to '/sign_in'
    end
  end

  def reset
    Game.create(user_id: current_user.id)
    redirect_to '/games'
    
  end

  # def check
  #   @choice = Choice.find(params[:choice_id])
  #   question = @choice.question

  #   Answer.create(
  #     game_id: params[:game_id], #make this dynamic
  #     choice_id: params[:choice_id],
  #     user_id: current_user.id
  #     )

  #   @answers = user_id.game_id.choice_id

  #   @score = @current_game.answers.where(correct: "true").count #update this

  #   @correct_answer = @choice.question.choices.where(correct: "true")

  #   if @choice.correct == "true"
  #     @message = "You got it correct, you are one step closer to becoming a cajillionaire!"
  #   else
  #     @message = "You got it wrong, Go back to school"
  #   end
  # end

  # def next
  #   questions_used = current_game.questions
  #   available_questions = Question.all.reject { |possible_question| questions_used.include?(possible_question) }

  #   next_question = available_questions.sample

  #   redirect_to "/next_question/#{question.id}"
  # end

end
