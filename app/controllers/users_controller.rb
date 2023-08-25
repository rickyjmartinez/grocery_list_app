class UsersController < ApplicationController
  before_action :authenticate_admin, only: [:index, :create, :update, :destroy]

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
      phone: params[:user][:phone],
      household_id: params[:user][:household_id],
    )
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/households" #add a homepage here
    else
      render :new, status: :unprocessable_entity
    end
  end
end
