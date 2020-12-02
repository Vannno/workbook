class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to root_path
  end

  private 
  def question_params
    params.require(:question).permit(:name, user_ids: [])
  end
end
