class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

 @counter = Reservation.params[:restaurant_id].no_ppl.sum

  def max_capacity?
     num = @counter + @no_ppl
     num > Restaurant::MAX_CAPACITY
   end

  def add_reservation
    available_seats = Restaurant::MAX_CAPACITY - @counter

    if available_seats >= @no_ppl
      @counter = @counter + @no_ppl


     else
       puts "There are #{available_seats} seats available."




   end
 end


 end

end
