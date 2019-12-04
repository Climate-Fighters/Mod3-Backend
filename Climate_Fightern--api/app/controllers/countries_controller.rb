class CountriesController < ApplicationController

  def index
    @countries = Country.all
    
    render json: @countries, include: "**"
  end

  def show
    @country = Country.find(params[:id])
    render json: @country
    # only: [:id, :name, :subject], include: {classrooms: {only: [:id, :name], include: {assignments: {only: [:id, :name]}}}}
  end

  # def create
  #   @country = Country.create(country_params)
  #   if @country.valid?
  #     render json: @country
  #   else
  #     render json: {errors: @country.errors.full_messages}
  #   end
  # end

  # private

  # def country_params
  #   params.permit(:name)
  #   # params.require(:country).permit(:name, :subject)
  # end

end
