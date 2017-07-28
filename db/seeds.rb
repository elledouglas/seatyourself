
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

Restaurant.create!(
  name: 'Macdonalds',
   location: "Front",
   phone: 555234567,
   email: 'ptcruise@gmail.com',
   time_open: 0500,
   time_close: 2300,
   cuisine: 'American',
   website: 'https://s-media-cache-ak0.pinimg.com/736x/10/27/83/102783442af8c9123d698308fd36cf95.jpg',
   description: 'Breakfast',
   price: 100
 )
