class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :country_resources
  # has_many :resources
  # has_many :resource_scenarios
  # has_many :scenarios
end
