class SessionsController < ApplicationController

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      login!(@user.id)
      flash[:success] = "Welcome back, #{@user.username}!"
      redirect_to @user
    else
      flash[:error] = 'Invalid username/password.'
      redirect_to root_url
    end
  end

  def destroy
    logout!
    redirect_to root_url
  end
end
