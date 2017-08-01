class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :user

MAX_CAPACITY = 30

end
