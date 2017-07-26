class Reservation < ApplicationRecord
  belongs_to :restaurant, :user

end
