class RestaurantsController < ApplicationController

  before_action :authenticate, only: [:edit, :update, :create, :destroy]

  def index
    @restaurants = Restaurant.all
  end

def new
  @restaurant = Restaurant.new
end


def create
   @restaurant = Restaurant.create(restaurant_params)
   @restaurant.user_id = session[:id]
   if @restaurant.save
     flash[:notice] = "Saved!"
     redirect_to root_path
   else
     flash.now[:error] = "Please try again!"
     render :new
   end
 end

def show
  @restaurant = Restaurant.find(params[:id])
end

def edit
  @restaurant = Restaurant.find(params[:id])
end

def update
  @restaurant = Restaurant.find(params[:id])
  if @restaurant && @restaurant.update(restaurant_params)
    flash[:notice] = "Restaurant Updated!"
    redirect_to root_path

else
    flash.now[:error] = @restaurant.errors.full_messages
    render :edit
  end
end


def destroy
  @restaurant = Restaurant.find(params[:id])
  if @restaurant && @restaurant.destroy
    flash[:alert] = "Restaurant Deleted!"
    redirect_to root_path
  else
    flash.now[:error] = @restaurant.errors.full_messages
    redirect_to '/restaurants'
end

end

def restaurant_params
  params.required(:restaurant).permit(:name, :phone, :cuisine, :description,
  :price, :location, :website)
end

end
