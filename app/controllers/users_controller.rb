class UsersController < ApplicationController

def new
    @user = User.new
end

# def edit
#     @user = current_user
#
#     unless @user
#       flash[:error]="You must be logged in"
#       redirect_to root_path
# end
#
# def update
#     @user = current_user
#
#   unless @user
#     flash[:error]="You must be logged in"
#     redirect_to root_path and return
#   end
#
#     @user.email = params[:user][:email]
#     @user.password = params[:user][:password]
#     @user.password_confirmation = params[:user][:password_confirmation
#
#   if @user.save
#     flash[:notice] = 'Account Succefully updated! '
#     redirect_to root_url
#
#   else
#     flash.now[:error] = "sorry try again"
#     render :edit
# end
# end

  def create
    @user = User.create(
    @user.email = params[:user][:email],
    @user.password = params[:user][:password],
    @user.password_confirmation = params[:user][:password_confirmation]
    )

end
    if @user.save
      flash[:notice] = 'Account Succefully created'
      session[:user_id] = @user.id
      redirect_to new_users_path
    else
      flash.now[:error] = 'Sorry Try Again'
      render :new
     end

     def user_params
         params.require(:user).permit(:email, :password, :password_confirmation)
       end

 end
