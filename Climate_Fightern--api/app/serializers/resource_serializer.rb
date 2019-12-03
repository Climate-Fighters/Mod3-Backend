class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name
  # has_many :country_resources
  has_many :resource_scenarios
end
