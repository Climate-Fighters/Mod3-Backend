class ResponsesController < ApplicationController

  def index
    @responses = Response.all
    render json: @responses
  end

  def show
    @response = Response.find(params[:id])
    render json: @response
    # only: [:id, :name, :subject], include: {classrooms: {only: [:id, :name], include: {assignments: {only: [:id, :name]}}}}
  end

  def create
    @response = Response.create(response_params)
    if @response.valid?
      render json: @response
    else
      render json: {errors: @response.errors.full_messages}
    end
  end

  private

  def response_params
    params.permit(:name)
    # params.require(:response).permit(:name, :subject)
  end

end
