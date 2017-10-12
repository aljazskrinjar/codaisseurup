# Category.destroy_all
# User.destroy_all
#
# modern_and_minimal = Category.create(name: "Modern and Minimal")
# sleek_and_sophisticated = Category.create(name: "Sleek and Sophisticated")
# warm_and_cozy = Category.create(name: "Warm and Cozy")
# room_with_a_view = Category.create(name: "Room with a View")
# elegant_and_ornate = Category.create(name: "Elegant and Ornate")
# a_mans_touch = Category.create(name: "A Man's Touch")
# white_washed = Category.create(name: "White Washed")
# tempting_terrace = Category.create(name: "Tempting Terrace")
#
# miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
# wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
# matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")
#
# # factory :user do
# #   email    { Faker::Internet.email }
# #   password { Faker::Internet.password }
#
#
#
# photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/aljazcloud/image/upload/v1507801772/4_event_marketing_xwwfrg.jpg", event: event1)
#
# arno = User.create!(
#   email: 'arno@codaisseur.com',
#   password: '123456'
# )
#
# event1=Event.create!(
#   name:"Ruby meeting",
# description:"metting of ruby geeks",
# location:"Amsterdam",
# price: 20.1,
# capacity: 100,
# includes_food: true,
# includes_drinks: true,
# starts_at: DateTime.now,
# ends_at: DateTime.now,
#
#   active: true,
#   user: arno)
#
#   event2=Event.create!(
#     name:"Ruby ",
#   description:" geeks",
#   location:"Amsterdam",
#   price: 100.1,
#   capacity: 100,
#   includes_food: true,
#   includes_drinks: true,
#   starts_at: DateTime.now,
#   ends_at: DateTime.now,
#
#     active: true,
#     user: matt)


Photo.delete_all
#Registration.delete_all
Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

# Users
miriam = User.create(email: "miriam@codaisseurup.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurup.com", password: "abcd1234")
mat = User.create(email: "mat@codaisseurup.com", password: "abcd1234")

#puts "#{User.all.size} users created"

# Photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/aljazcloud/image/upload/v1507801772/4_event_marketing_xwwfrg.jpg")
#photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1489331985/yoga_dog_02_affayd.jpg")
#photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1489331989/yoga_dog_01_swh1ea.jpg")

#puts "#{Photo.all.size} photos created"

# Events
event = Event.create!(
  name: "Monthly Yoga Weekend",
  description: "Let's come together and practice some asanas together in the woods!",
  location: "Amsterdam",
  includes_food: false,
  includes_drinks: true,
  price: 10.00,
  starts_at: 10.days.from_now,
  ends_at: 12.days.from_now,
  capacity: 100,
  active: true,
  user: miriam,
  photos: [ photo1],
)

#puts "#{Event.all.size} events created"

# Categories
Category.create!([
  { name: "Movements" },
  { name: "Outdoors & Adventure" },
  { name: "Tech" },
  { name: "Family" },
  { name: "Health & Wellness" },
  { name: "Sports & Fitness" },
  { name: "Learning" },
  { name: "Photography" },
  { name: "Food & Drink" },
])

#puts "#{Category.all.size} categories created"

# Events
event = Event.find_by(name: "Monthly Yoga Weekend")
event.categories << Category.find_by(name: "Outdoors & Adventure")
event.categories << Category.find_by(name: "Sports & Fitness")

#puts "#{Event.all.size} events created"
