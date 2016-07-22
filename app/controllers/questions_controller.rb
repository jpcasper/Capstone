class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show

    @question = Question.find(params[:id])
    @choices = @question.choices

    # @wrong_answer = @choices.where(correct: "false")

    
    index = current_game.answers.select{ |answer| answer.choice.correct == "true" }.count
    score = ["$0","$100,000", "$250,000","$500,000","$750,000","$1,000,000","$100,000,000", "$250,000,000", "$500,000,000", "$100,000,000", "$500,000,000", "CAJILLIONAIRE STATUS!!!!!!!!!!"]
    
    @score = score[index]

  end


  def check
    @choice = Choice.find(params[:choice_id])
    @question = @choice.question

    Answer.create(
      game_id: current_game.id, #make this dynamic
      choice_id: @choice.id,
      user_id: current_user.id
      )

    # @answers = user_id.game_id.choice_id

    @correct_answer = @choice.question.choices.where(correct: "true")

    index = current_game.answers.select{ |answer| answer.choice.correct == "true" }.count
    score = ["$0","$100,000", "$250,000","$500,000","$750,000","$1,000,000","$100,000,000", "$250,000,000", "$500,000,000", "$100,000,000", "$500,000,000", "CAJILLIONAIRE STATUS!!!!!!!!!!"]
    
    @score = score[index]

    
    if @score == score[11]
      # @message = "Congratulations!!! You are now...a cajillionaire!!! Let me borrow a dollar!!!"
      redirect_to '/congrats'

    # elsif @score == score[11]
    #   current_game.destroy

    elsif @choice.correct == "true"
      @message = "You got it correct, you are one step closer to becoming a cajillionaire!"
    
    else
      redirect_to '/reset'
    end
  end



  def next
    if current_game
      if current_game.complete
        Game.create(user_id: current_user.id)
      end
      
        questions_used = current_game.questions
        # puts "**************"
        # questions_used.each do |used|
        #   puts used.id
        # end
        # puts "**************"
        available_questions = Question.all.reject { |possible_question| questions_used.include?(possible_question) }

        next_question = available_questions.sample

        redirect_to "/questions/#{next_question.id}"
    else
      redirect_to '/new_game'
    end
  end

  def congrats
    @congrats = "congrats"
    current_game.update(complete: true)
  end


  # def new_game
  #   new_game = Game.new(user_id: current_user)

  #   if new_game.save
  #     redirect_to '/next_question'
  #   else
  #     redirect_to '/sign_in'
  #   end
  # end

end


