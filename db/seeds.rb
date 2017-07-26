
swiss_chalet = Restaurant.create!(
  # name: "Swiss Chalet",
  # cuisine: "American"
)

pizza_pizza = Restaurant.create!(
#   name: "Pizza Pizza",
#   cuisine: "Italian"
)

Reservation.create!(
  no_ppl: 8,
  date: "09-09-2017",
  time: "730pm",
  restaurant: pizza_pizza
)

swiss_chalet.reservations.create!(
  no_ppl: 4,
  date: "09-07-2017",
  time: "630pm"
)
