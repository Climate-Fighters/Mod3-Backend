class ScenariosController < ApplicationController

  def index
    @scenarios = Scenario.all
    render json: @scenarios
  end

  def show
    @scenario = Scenario.find(params[:id])
    render json: @scenario
    # only: [:id, :name, :subject], include: {classrooms: {only: [:id, :name], include: {assignments: {only: [:id, :name]}}}}
  end

end
