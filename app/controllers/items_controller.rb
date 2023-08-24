class ItemsController < ApplicationController
  def index
    @items = Item.all
    render :index
  end

  def new
    @item = Item.new
    render :new
  end

  def create
    @item = Item.create!(
      item_name: params[:item][:item_name],
      quantity: params[:item][:quantity],
      user_id: params[:item][:user_id],
      household_id: params[:item][:household_id],
    )
    redirect_to "/households"
  end
end
