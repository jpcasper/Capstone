class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_game
    Game.where(user_id: current_user.id).last
  end
  helper_method :current_game

  def fifty_fifty
    if @choices.correct == "false"
      @choices.pop
    end
  end
end
