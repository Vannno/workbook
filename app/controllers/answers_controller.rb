class AnswersController < ApplicationController
    
  def index
    @answer = Answer.new
    @question = Question.find(params[:question_id])
    @answers = @question.answers.includes(:user)
  end

  

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      redirect_to question_answers_path(@question)
    else
      @answers = @question.answers.includes(:user)
      render :index
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content).merge(user_id: current_user.id)
  end

  
end
