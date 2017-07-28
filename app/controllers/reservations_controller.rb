class ReservationsController < ApplicationController


  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.new
  end

def create
  @reservation = Reservation.new
  @reservation.name = params[:restaurant][:name]
  @reservation.description = params[:reservation][:description]
  @reservation.no_ppl = params[:reservation][:no_ppl]
  @reservation.date = params[:reservation][:date]
  @reservation.time = params[:reservation][:time]

  #Added
  if @reservation.save
    flash[:notice] = "Your reservation is confirmed!"
    redirect_to #####
  else
    flash.now[:error] = "Oops a daisy, please try again :)"
    render :new
  end
end

def edit
  @reservation = Reservation.find(params[:id])
end

def show
  @reservation = Reservation.find(params[:id])
end

#ADDED at night

def update
  @reservation = Reservation.find(params[:reservation_id])

  if @reservation.update(reservation_params)
    flash[:notice] = "Reservation Updated!"
    redirect_to @reservation
  else
    redirect_back_or_to @reservation
  end
end

  def destroy
    @reservation = Reservation.find(params[:id])

    @reservation.destroy
    flash[:alert] = "Reservation Deleted!"
    redirect_to '/restaurants'
  end

  private

  def reservation_params
    params.required(:reservation).permit(:time, :date, :no_ppl)
  end


end
