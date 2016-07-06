class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_game
    @choices = @questions.choices.current_user
        Answer.create(
        game_id: params[:game_id], #make this dynamic
        choice_id: params[:choice_id],
        user_id: current_user.id
        )
    @correct_answer = @choice.question.choices.where(correct: "true")
     # @answers = user_id.game_id.choice_id


  end
end
