class HouseholdsController < ApplicationController
  def index
    @households = Household.all
    render :index
  end

  def show
    @household = Household.find_by(id: params[:id])
    render :show
  end

  def new
    @household = Household.new
    render :new
  end

  def create
    @household = Household.create(
      name: params[:household][:name],
      location: params[:household][:location],
    )
    redirect_to "/households"
  end
end
