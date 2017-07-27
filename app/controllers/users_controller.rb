class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = 'Account Succefully created'
      redirect_to root_url
    else
      flash.now[:error] = 'Sorry Try Again'
      render :new
    end
  end

end
