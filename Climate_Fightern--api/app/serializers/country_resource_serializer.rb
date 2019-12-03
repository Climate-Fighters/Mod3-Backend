class CountryResourceSerializer < ActiveModel::Serializer
  attributes :id, :price
  has_one :country
  has_one :resource
end
