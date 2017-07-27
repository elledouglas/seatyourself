class RestaurantsController < ActionController::Base

def index
  @restaurants = Restaurant.all
end

def new
  @restaurants = Restaurant.new
end

def create
 #   @restaurant = Restaurant.create()
 #   if @restaurant.save
 #     flash[:notice] = "Restaurant Saved!"
 #     redirect_to restaurants_path
 #   else
 #     flash.now[:error] = "Please try again!"
 #     render :new
 #   end
 # end

 end 
def edit
end

def updated
end

def destroy
end

end
