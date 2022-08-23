# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

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
file1 = URI.open("https://avatars.githubusercontent.com/u/106041442?v=4")
user1.photo.attach(io: file1, filename: "user1.jpg", content_type: "image/jpeg")

user2 = User.create!(
  email: "vinny.algaron@gmail.com",
  password: "123456",
  first_name: "Vinny",
  last_name: "Algaron",
  age: 29
)
file2 = URI.open("https://avatars.githubusercontent.com/u/108010616?v=4")
user2.photo.attach(io: file2, filename: "user2.jpg", content_type: "image/jpeg")

user3 = User.create!(
  email: "melvin.darvieux@gmail.com",
  password: "123456",
  first_name: "Melvin",
  last_name: " Darvieux",
  age: 24
)
file3 = URI.open("https://avatars.githubusercontent.com/u/105221230?v=4")
user3.photo.attach(io: file3, filename: "user3.jpg", content_type: "image/jpeg")

user4 = User.create!(
  email: "elon.musk@gmail.com",
  password: "123456",
  first_name: "Elon",
  last_name: " Musk",
  age: 49
)
file4 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Elon_Musk_Royal_Society.jpg/400px-Elon_Musk_Royal_Society.jpg")
user4.photo.attach(io: file4, filename: "user4.jpg", content_type: "image/jpeg")

user5 = User.create!(
  email: "greta.thunberg@gmail.com",
  password: "123456",
  first_name: "Greta",
  last_name: "Thunberg",
  age: 19
)
file5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Greta_Thunberg%2C_March_2020_%28cropped%29.jpg/520px-Greta_Thunberg%2C_March_2020_%28cropped%29.jpg")
user5.photo.attach(io: file5, filename: "user5.jpg", content_type: "image/jpeg")

p 'Saving new users'

car1 = Car.create!(
  brand: "Tesla",
  model: "Tesla Model 3",
  autonomy: 232,
  description: "The Model 3 rises above the class in almost every area. It's fun to drive, practical and stylish. The touchscreen interface and lack of dedicated smartphone integration can be annoyance at times, but overall the 3 is a great pick for an EV.",
  daily_price: 129,
  owner: user1
)
file6 = URI.open("https://media.ed.edmunds-media.com/tesla/model-3/2022/oem/2022_tesla_model-3_sedan_performance_fq_oem_1_815.jpg")
car1.photo.attach(io: file6, filename: "car1.jpg", content_type: "image/jpeg")

car2 = Car.create!(
  brand: "Kia",
  model: "Kia Niro EV",
  autonomy: 285,
  description: "The Niro EV is one of the best new electric vehicles and worth checking out. It's fun to drive, has a roomy cabin, and even posted a generous 285 miles of range in Edmunds' real-world test, which is plenty.",
  daily_price: 119,
  owner: user1
)
file7 = URI.open("https://media.ed.edmunds-media.com/kia/niro-ev/2022/oem/2022_kia_niro-ev_4dr-suv_ex-premium_fq_oem_1_815.jpg")
car2.photo.attach(io: file7, filename: "car2.jpg", content_type: "image/jpeg")

car3 = Car.create!(
  brand: "Volkswagen",
  model: "Volkswagen ID.4",
  autonomy: 287,
  description: "The ID.4 is one of the first all-electric compact SUVs to hit the market, offering loads of standard features and a genuinely spacious cabin. It pushes the envelope with some neat technology and traveled 287 miles on a single charge in Edmunds' real-world range test. There's a lot to get excited about here.",
  daily_price: 109,
  owner: user1
)
file8 = URI.open("https://media.ed.edmunds-media.com/volkswagen/id4/2021/oem/2021_volkswagen_id4_4dr-suv_awd-pro-s-statement_fq_oem_1_815.jpg")
car3.photo.attach(io: file8, filename: "car3.jpg", content_type: "image/jpeg")

car4 = Car.create!(
  brand: "Hyundai",
  model: "Hyundai Kona Electric",
  autonomy: 315,
  description: "The Kona Electric is a favorite among the more accessible EVs. It traveled an impressive 315 miles in Edmunds real-world range test. It also boasts an attractive interior, a long list of tech and safety features and surprisingly quick acceleration.",
  daily_price: 119,
  owner: user1
)
file9 = URI.open("https://media.ed.edmunds-media.com/hyundai/kona-electric/2019/oem/2019_hyundai_kona-electric_4dr-suv_ultimate_fq_oem_1_815.jpg")
car4.photo.attach(io: file9, filename: "car4.jpg", content_type: "image/jpeg")

car5 = Car.create!(
  brand: "Chevrolet",
  model: "Chevrolet Bolt EV",
  autonomy: 278,
  description: "The Chevrolet Bolt boasts quick acceleration, and approachable price and 278 miles of range when driven on Edmunds real-world EV range loop. Even with more competitors now, the Bolt is certainly worth checking out if you're in the market for an EV.",
  daily_price: 99,
  owner: user2
)
file10 = URI.open("https://media.ed.edmunds-media.com/chevrolet/bolt-ev/2022/oem/2022_chevrolet_bolt-ev_4dr-hatchback_2lt_fq_oem_1_815.jpg")
car5.photo.attach(io: file10, filename: "car5.jpg", content_type: "image/jpeg")

car6 = Car.create!(
  brand: "Nissan",
  model: "Nissan LEAF",
  autonomy: 237,
  description: "In the world of cost-effective EVs, the Leaf's game is strong. Along with a host of standard advance driving aids, the Leaf also delivered a respectable 237 miles of range on a single charge when driven on Edmunds' real-world EV test route.",
  daily_price: 89,
  owner: user2
)
file11 = URI.open("https://media.ed.edmunds-media.com/nissan/leaf/2020/oem/2020_nissan_leaf_4dr-hatchback_sl-plus_fq_oem_1_815.jpg")
car6.photo.attach(io: file11, filename: "car6.jpg", content_type: "image/jpeg")

car7 = Car.create!(
  brand: "Hyundai",
  model: "Hyundai Ioniq Electric",
  autonomy: 202,
  description: "The Hyundai Ioniq Electric is a tremendous value for an electric car, both in terms of cost of entry and efficiency. It also offers all the user-friendly tech we expect from Hyundai. But it falls short of class leaders in terms of performance and driving range, traveling just 202 miles in Edmunds real-world range test.",
  daily_price: 109,
  owner: user2
)
file12 = URI.open("https://media.ed.edmunds-media.com/hyundai/ioniq-electric/2020/oem/2020_hyundai_ioniq-electric_4dr-hatchback_limited_fq_oem_1_815.jpg")
car7.photo.attach(io: file12, filename: "car7.jpg", content_type: "image/jpeg")

car8 = Car.create!(
  brand: "MINI",
  model: "MINI Hardtop 2 Door",
  autonomy: 150,
  description: "The Mini Cooper SE is an electric version of the regular Hardtop 2 Door. This means less cargo room and rear seat space compared to other EVs, but also some classic Mini benefits such as quick acceleration and nimble handling. Range is more modest than most, however, traveling 150 miles in Edmunds' real-world range test.",
  daily_price: 79,
  owner: user2
)
file13 = URI.open("https://media.ed.edmunds-media.com/mini/hardtop-2-door/2021/oem/2021_mini_hardtop-2-door_2dr-hatchback_cooper-se_fq_oem_1_815.jpg")
car8.photo.attach(io: file13, filename: "car8.jpg", content_type: "image/jpeg")

car9 = Car.create!(
  brand: "Mazda",
  model: "Mazda MX-30",
  autonomy: 114,
  description: "The Mazda MX-30 sports a sleek, eco-conscious interior, it's packed with a lot of modern technology, and it's a lot more engaging to drive than many of its contemporaries. So why is it so far down our rankings? Bottom line: It's small, slow, and has only 114 miles of range.",
  daily_price: 69,
  owner: user3
)
file14 = URI.open("https://media.ed.edmunds-media.com/mazda/mx-30/2022/oem/2022_mazda_mx-30_4dr-suv_base_fq_oem_1_815.jpg")
car9.photo.attach(io: file14, filename: "car9.jpg", content_type: "image/jpeg")

car10 = Car.create!(
  brand: "Toyota",
  model: "Toyota bZ4X",
  autonomy: 227,
  description: "The all-new Toyota bZ4X falls short of what we expect in a modern EV. It's comfortable, has a decent array of standard features, and packs in loads of in-car tech. But it's not nearly as good to drive, doesn't feel as nice, or travel as far on a single charge as other EVs at this price.",
  daily_price: 109,
  owner: user3
)
file15 = URI.open("https://media.ed.edmunds-media.com/toyota/bz4x/2023/oem/2023_toyota_bz4x_4dr-suv_limited_fq_oem_1_815.jpg")
car10.photo.attach(io: file15, filename: "car10.jpg", content_type: "image/jpeg")

car11 = Car.create!(
  brand: "Polestar",
  model: "Polestar 2",
  autonomy: 228,
  description: "The Polestar 2 is the first all-electric model from Volvo's upstart brand. It boasts excellent driving dynamics, strong tech backed by Google, and a user-friendly interface. It's a bit pricey even when factoring in available tax credits, and on the cozier side in terms of interior space.",
  daily_price: 209,
  owner: user3
)
file16 = URI.open("https://media.ed.edmunds-media.com/non-make/hero/hero_81221_815.jpg")
car11.photo.attach(io: file16, filename: "car11.jpg", content_type: "image/jpeg")

car12 = Car.create!(
  brand: "BMW",
  model: "BMW i4 M50",
  autonomy: 268,
  description: "The BMW i4 is the latest all-electric sedan from BMW based on the company's 4 Series Gran Coupe. The sportier M50 model uses dual electric motors, providing confident all-wheel-drive traction and packing a wallop of power to the tune of 536 horsepower.",
  daily_price: 189,
  owner: user3
)
file17 = URI.open("https://media.ed.edmunds-media.com/bmw/i4/2022/oem/2022_bmw_i4_sedan_m50_fq_oem_1_815.jpg")
car12.photo.attach(io: file17, filename: "car12.jpg", content_type: "image/jpeg")


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
