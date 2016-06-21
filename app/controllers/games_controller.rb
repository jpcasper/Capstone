class GamesController < ApplicationController

  def index
    @questions = Question.all
   
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(
      content: params[:content]
      )
  end


end
