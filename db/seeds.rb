# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Restaurant.create!({
  name: "Wich Wich",
  description: "Sub sandwiches",
  address: "926 Orange Ave, Coronado CA",
  menu_url: "http://www.whichwich.com/menuV5.5",
  ordering_url: "http://www.whichwich.com/online_ordering",
  phone_number: "619-522-9424",
})
