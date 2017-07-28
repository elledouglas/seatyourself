class Restaurant < ApplicationRecord
  has_many :reservations

MAX_CAPACITY = 30

end
