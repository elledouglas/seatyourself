class RestaurantsController < ActionController::Base

def index
  @restaurants = Restaurant.all
end

def new
  @restaurants = Restaurant.new
end

def current_user
  session[:user_id] && User.find(session[:user_id])
end
def create
   @restaurant = Restaurant.create(restaurant_params)
   if @restaurant.save
     flash[:notice] = "Saved!"
     redirect_to restaurants_path
   else
     flash.now[:error] = "Please try again!"
     render :new
   end
 end

def show
  unless current_user
   flash[:alert] = ["MUST be logged in!"]
   redirect_to root_path
   return
end
@restaurant = Restaurant.find(params[:id])
end

def edit
end

def updated
end

def destroy
end

def restaurant_params
  params.required(:restaurant).permit(:name, :address,
  :phone, :cuisine, :website, :price_range, :email,
  :description, :time_open, :time_close)
end

end
