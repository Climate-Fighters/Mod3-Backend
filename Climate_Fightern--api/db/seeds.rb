# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CountryResource.destroy_all
ResourceScenario.destroy_all
Country.destroy_all
Resource.destroy_all
Scenario.destroy_all

usa = Country.create(name: 'USA')
china = Country.create(name: 'China')
india = Country.create(name: 'India')
brazil = Country.create(name: 'Brazil')
france = Country.create(name: 'France')

wheat = Resource.create(name: 'Wheat')
rice = Resource.create(name: 'Rice')
maize = Resource.create(name: 'Maize')
soybean = Resource.create(name: 'Soybean')

rcp26 = Scenario.create(name: "RCP 2.6")
rcp45 = Scenario.create(name: "RCP 4.5")
rcp60 = Scenario.create(name: "RCP 6.0")
rcp85 = Scenario.create(name: "RCP 8.5")

usa_wheat = CountryResource.create(production: 47, country: usa, resource: wheat)
usa_maize = CountryResource.create(production: 338, country: usa, resource: maize)
usa_soybean = CountryResource.create(production: 108, country: usa, resource: soybean)

china_wheat = CountryResource.create(production: 131, country: china, resource: wheat)
china_rice = CountryResource.create(production: 214, country: china, resource: rice)
china_maize = CountryResource.create(production: 225, country: china, resource: maize)
china_soybean = CountryResource.create(production: 12, country: china, resource: soybean)

india_wheat = CountryResource.create(production: 99, country: india, resource: wheat)
india_rice = CountryResource.create(production: 168, country: india, resource: rice)
india_maize = CountryResource.create(production: 42, country: india, resource: maize)

brazil_maize = CountryResource.create(production: 83, country: brazil, resource: maize)
brazil_soybean = CountryResource.create(production: 87, country: brazil, resource: soybean)

france_wheat = CountryResource.create(production: 37, country: france, resource: wheat)
france_maize = CountryResource.create(production: 17, country: france, resource: maize)

wheat_26 = ResourceScenario.create(yield: 93, resource: wheat, scenario: rcp26)
wheat_45 = ResourceScenario.create(yield: 87, resource: wheat, scenario: rcp45)
wheat_60 = ResourceScenario.create(yield: 86, resource: wheat, scenario: rcp60)
wheat_85 = ResourceScenario.create(yield: 78, resource: wheat, scenario: rcp85)

rice_26 = ResourceScenario.create(yield: 97, resource: rice, scenario: rcp26)
rice_45 = ResourceScenario.create(yield: 95, resource: rice, scenario: rcp45)
rice_60 = ResourceScenario.create(yield: 93, resource: rice, scenario: rcp60)
rice_85 = ResourceScenario.create(yield: 89, resource: rice, scenario: rcp85)

maize_26 = ResourceScenario.create(yield: 91, resource: maize, scenario: rcp26)
maize_45 = ResourceScenario.create(yield: 86, resource: maize, scenario: rcp45)
maize_60 = ResourceScenario.create(yield: 83, resource: maize, scenario: rcp60)
maize_85 = ResourceScenario.create(yield: 72, resource: maize, scenario: rcp85)

soybean_26 = ResourceScenario.create(yield: 96, resource: soybean, scenario: rcp26)
soybean_45 = ResourceScenario.create(yield: 94, resource: soybean, scenario: rcp45)
soybean_60 = ResourceScenario.create(yield: 93, resource: soybean, scenario: rcp60)
soybean_85 = ResourceScenario.create(yield: 88, resource: soybean, scenario: rcp85)


# sample method: (usa_wheat.production * wheat_26.yield / 100)