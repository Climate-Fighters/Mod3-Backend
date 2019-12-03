# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





usa = Country.create(
  name: 'USA'
)


wheat = Resource.create(
  name: 'Wheat'
)

rice = Resource.create(
  name: 'Rice'
)

wheat_price = CountryResource.create(
  price: 3.02,
  country: usa,
  resource: wheat
)

rice_price = CountryResource.create(
  price: 2.50,
  country: usa,
  resource: rice
)






