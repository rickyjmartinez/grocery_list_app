class HouseholdsController < ApplicationController
  def index
    @households = Household.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end
end
