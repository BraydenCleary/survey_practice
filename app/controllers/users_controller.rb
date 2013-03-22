class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])
    if @user.save
      login!(@user)
      flash[:success] = "Welcome to Survey Monkey, #{@user.username}"
      redirect_to @user
    else
      render 'pages/home'
    end
  end


  def show
    @user = User.find(params[:id])
  end

end
