class UsersController < ApplicationController
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
      redirect_to "/" #add a homepage here
    else
      render :new, status: :unprocessable_entity
    end
  end
end
