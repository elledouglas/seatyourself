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
   if @restaurant.save
     flash[:notice] = "Saved!"
     redirect_to restaurants_path
   else
     flash.now[:error] = "Please try again!"
     render :new
   end
 end

def show

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
