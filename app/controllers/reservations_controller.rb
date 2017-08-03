class ReservationsController < ApplicationController


  def index
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @reservation = Reservation.all
  end

  def new

  end

def create
  @reservation = Reservation.new(
  @reservation.no_ppl = params[:reservation][:no_ppl],
  @reservation.date = params[:reservation][:date],
  @reservation.time = params[:reservation][:time])
  # user: current_user


  if @reservation.save
    flash[:notice] = "Your reservation is confirmed!"

  else
    flash.now[:error] = "Oops a daisy, please try again :)"
    render :new
  end


def edit
  @reservation = Reservation.find(params[:id])
end

def show
  @reservation = Reservation.find(params[:id])
end



def update
  @reservation = Reservation.find(params[:reservation_id])

  if @reservation.update(reservation_params)
    flash[:notice] = "Reservation Updated!"
    redirect_to @reservation
  else
    redirect_back_or_to @reservation
  end
end
end

  def destroy
    @reservation = Reservation.find(params[:id])

    @reservation.destroy
    flash[:alert] = "Reservation Deleted!"
    redirect_to '/restaurants'
  end


end
