Category.destroy_all
User.destroy_all

modern_and_minimal = Category.create(name: "Modern and Minimal")
sleek_and_sophisticated = Category.create(name: "Sleek and Sophisticated")
warm_and_cozy = Category.create(name: "Warm and Cozy")
room_with_a_view = Category.create(name: "Room with a View")
elegant_and_ornate = Category.create(name: "Elegant and Ornate")
a_mans_touch = Category.create(name: "A Man's Touch")
white_washed = Category.create(name: "White Washed")
tempting_terrace = Category.create(name: "Tempting Terrace")

miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")

# factory :user do
#   email    { Faker::Internet.email }
#   password { Faker::Internet.password }

user2=User.create(email: FactoryGirl.create(:user).email,password: FactoryGirl.create(:user).password)
user3=User.create(email: Faker::Internet.email, password: Faker::Internet.password)


arno = User.create!(
  email: 'arno@codaisseur.com',
  password: '123456'
)

Event.create!(
  name:"Ruby meeting",
description:"metting of ruby geeks",
location:"Amsterdam",
price: 20.1,
capacity: 100,
includes_food: true,
includes_drinks: true,
starts_at: DateTime.now,
ends_at: DateTime.now,

  active: true,
  user: arno)

  Event.create!(
    name:"Ruby ",
  description:" geeks",
  location:"Amsterdam",
  price: 100.1,
  capacity: 100,
  includes_food: true,
  includes_drinks: true,
  starts_at: DateTime.now,
  ends_at: DateTime.now,

    active: true,
    user: matt)
