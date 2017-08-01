class ReservationsController < ApplicationController


  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @reservation = Reservation.create(reservation_params)
    @reservation[:user_id] = current_user.id
    @reservation.restaurant_id = params[:restaurant_id]

    if @reservation.save
      flash[:notice] = "Your reservation is confirmed!"
      redirect_to root_path
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


  def reservation_params
    params.required(:reservation).permit(:no_ppl, :date, :time)
  end


end
