# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)





p 'Delete ancient seeds' # à classer du plus précis au moins
Rental.destroy_all
Car.destroy_all
User.destroy_all


# "car.create.owner:User"
# Creation of users and cars

user1 = User.create!(
  email: "sylvain.vandermeersch@gmail.com",
  password: "123456",
  first_name: "Sylvain",
  last_name: " Vandermeersch",
  age: 28
)

user2 = User.create!(
  email: "vinny.algaron@gmail.com",
  password: "123456",
  first_name: "Vinny",
  last_name: "Algaron",
  age: 29
)

user3 = User.create!(
  email: "melvin.darvieux@gmail.com",
  password: "123456",
  first_name: "Melvin",
  last_name: " Darvieux",
  age: 24
)

user4 = User.create!(
  email: "elon.musk@gmail.com",
  password: "123456",
  first_name: "Elon",
  last_name: " Musk",
  age: 49
)

user5 = User.create!(
  email: "greta.thunberg@gmail.com",
  password: "123456",
  first_name: "Greta",
  last_name: "Thunberg",
  age: 19
)

p 'Saving new users'

car1 = Car.create!(
  brand: "Tesla",
  model: "Tesla Model 3",
  autonomy: 232,
  description: "The Model 3 rises above the class in almost every area. It's fun to drive, practical and stylish. The touchscreen interface and lack of dedicated smartphone integration can be annoyance at times, but overall the 3 is a great pick for an EV.",
  daily_price: 129,
  owner: user1
)

car2 = Car.create!(
  brand: "Kia",
  model: "Kia Niro EV",
  autonomy: 285,
  description: "The Niro EV is one of the best new electric vehicles and worth checking out. It's fun to drive, has a roomy cabin, and even posted a generous 285 miles of range in Edmunds' real-world test, which is plenty.",
  daily_price: 119,
  owner: user1
)

car3 = Car.create!(
  brand: "Volkswagen",
  model: "Volkswagen ID.4",
  autonomy: 287,
  description: "The ID.4 is one of the first all-electric compact SUVs to hit the market, offering loads of standard features and a genuinely spacious cabin. It pushes the envelope with some neat technology and traveled 287 miles on a single charge in Edmunds' real-world range test. There's a lot to get excited about here.",
  daily_price: 109,
  owner: user1
)

car4 = Car.create!(
  brand: "Hyundai",
  model: "Hyundai Kona Electric",
  autonomy: 315,
  description: "The Kona Electric is a favorite among the more accessible EVs. It traveled an impressive 315 miles in Edmunds real-world range test. It also boasts an attractive interior, a long list of tech and safety features and surprisingly quick acceleration.",
  daily_price: 119,
  owner: user1
)

car5 = Car.create!(
  brand: "Chevrolet",
  model: "Chevrolet Bolt EV",
  autonomy: 278,
  description: "The Chevrolet Bolt boasts quick acceleration, and approachable price and 278 miles of range when driven on Edmunds real-world EV range loop. Even with more competitors now, the Bolt is certainly worth checking out if you're in the market for an EV.",
  daily_price: 99,
  owner: user2
)

car6 = Car.create!(
  brand: "Nissan",
  model: "Nissan LEAF",
  autonomy: 237,
  description: "In the world of cost-effective EVs, the Leaf's game is strong. Along with a host of standard advance driving aids, the Leaf also delivered a respectable 237 miles of range on a single charge when driven on Edmunds' real-world EV test route.",
  daily_price: 89,
  owner: user2
)

car7 = Car.create!(
  brand: "Hyundai",
  model: "Hyundai Ioniq Electric",
  autonomy: 202,
  description: "The Hyundai Ioniq Electric is a tremendous value for an electric car, both in terms of cost of entry and efficiency. It also offers all the user-friendly tech we expect from Hyundai. But it falls short of class leaders in terms of performance and driving range, traveling just 202 miles in Edmunds real-world range test.",
  daily_price: 109,
  owner: user2
)

car8 = Car.create!(
  brand: "MINI",
  model: "MINI Hardtop 2 Door",
  autonomy: 150,
  description: "The Mini Cooper SE is an electric version of the regular Hardtop 2 Door. This means less cargo room and rear seat space compared to other EVs, but also some classic Mini benefits such as quick acceleration and nimble handling. Range is more modest than most, however, traveling 150 miles in Edmunds' real-world range test.",
  daily_price: 79,
  owner: user2
)

car9 = Car.create!(
  brand: "Mazda",
  model: "Mazda MX-30",
  autonomy: 114,
  description: "The Mazda MX-30 sports a sleek, eco-conscious interior, it's packed with a lot of modern technology, and it's a lot more engaging to drive than many of its contemporaries. So why is it so far down our rankings? Bottom line: It's small, slow, and has only 114 miles of range.",
  daily_price: 69,
  owner: user3
)

car10 = Car.create!(
  brand: "Toyota",
  model: "Toyota bZ4X",
  autonomy: 227,
  description: "The all-new Toyota bZ4X falls short of what we expect in a modern EV. It's comfortable, has a decent array of standard features, and packs in loads of in-car tech. But it's not nearly as good to drive, doesn't feel as nice, or travel as far on a single charge as other EVs at this price.",
  daily_price: 109,
  owner: user3
)

car11 = Car.create!(
  brand: "Polestar",
  model: "Polestar 2",
  autonomy: 228,
  description: "The Polestar 2 is the first all-electric model from Volvo's upstart brand. It boasts excellent driving dynamics, strong tech backed by Google, and a user-friendly interface. It's a bit pricey even when factoring in available tax credits, and on the cozier side in terms of interior space.",
  daily_price: 209,
  owner: user3
)

car12 = Car.create!(
  brand: "BMW",
  model: "BMW i4 M50",
  autonomy: 268,
  description: "The BMW i4 is the latest all-electric sedan from BMW based on the company's 4 Series Gran Coupe. The sportier M50 model uses dual electric motors, providing confident all-wheel-drive traction and packing a wallop of power to the tune of 536 horsepower.",
  daily_price: 189,
  owner: user3
)


p 'Saving new cars'

rental1 = Rental.create!(
  car: car1,
  beginning_date: "2022-08-26",
  ending_date: "2022-08-29",
  renter: user4,
  total_price: 129 * 3,
  status: "accepted",
  comment: "want to bring my dog"

)

rental2 = Rental.create!(
  car: car3,
  beginning_date: "2022-08-26",
  ending_date: "2022-08-28",
  renter: user4,
  total_price: 109 * 2,
  status: "declined",
  comment: "want to bring my dog"
)

rental3 = Rental.create!(
  car: car12,
  beginning_date: "2022-08-26",
  ending_date: "2022-08-29",
  renter: user4,
  total_price: 189 * 3,
  status: "pending",
  comment: "want to bring my dog"
)

p 'Saving new rentals'
p 'Ended creation'
