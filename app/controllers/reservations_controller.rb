class ReservationsController < ApplicationController
  def index
    @reservation = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.name = params[:restaurant][:name]
    @reservation.description = params[:reservation][:description]
    @reservation.no_ppl = params[:reservation][:no_ppl]
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
  
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def show
    @reservation = Reservation.find(params[:id])
end

end
