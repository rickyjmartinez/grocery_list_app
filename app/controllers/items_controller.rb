class ItemsController < ApplicationController
  def index
    @items = Item.all
    #item.where some logic to find the items?
    # @items = Item.find_by(id: current_user.household_id)
    render :index
  end

  def show
    @item = Item.find_by(id: params[:id])
    render :show
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
    redirect_to "/items/new"
  end

  def edit
    @item = Item.find_by(id: params[:id])
    render :edit
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.update!(
      item_name: params[:item][:item_name],
      quantity: params[:item][:quantity],
      user_id: params[:item][:user_id],
      household_id: params[:item][:household_id],
      status: params[:item][:status],
    )
    redirect_to "/households"
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    redirect_to "/households", status: :see_other
  end
end
