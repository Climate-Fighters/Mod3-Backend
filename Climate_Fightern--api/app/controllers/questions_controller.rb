class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render json: @questions
  end

  def show
    @question = Question.find(params[:id])
    render json: @question
    # only: [:id, :name, :subject], include: {classrooms: {only: [:id, :name], include: {assignments: {only: [:id, :name]}}}}
  end

  # def create
  #   @question = Question.create(question_params)
  #   if @question.valid?
  #     render json: @question
  #   else
  #     render json: {errors: @question.errors.full_messages}
  #   end
  # end

  # private

  # def question_params
  #   params.permit(:name)
  #   # params.require(:question).permit(:name, :subject)
  # end

end
