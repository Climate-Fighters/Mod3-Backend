class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
    render json: @resources
  end

  def show
    @resource = Resource.find(params[:id])
    render json: @resource
    # only: [:id, :name, :subject], include: {classrooms: {only: [:id, :name], include: {assignments: {only: [:id, :name]}}}}
  end

end
