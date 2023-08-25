class HouseholdsController < ApplicationController
  def index
    @households = Household.all
    render :index
  end

  def show
    # @household = Household.find_by(id: params[:id])
    @household = Household.find_by(id: current_user.household_id)
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

  def edit
    @household = Household.find_by(id: params[:id])
    render :edit
  end

  def update
    @household = Household.find_by(id: params[:id])
    @household.update(
      name: params[:household][:name],
      location: params[:household][:location],
    )
    redirect_to "/households"
  end

  def destroy
    @household = Household.find_by(id: params[:id])
    @household.destroy
    redirect_to "/households", status: :see_other
  end
end
