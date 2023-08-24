class HouseholdsController < ApplicationController
  def index
    @households = Household.all
    render :index
  end
end
