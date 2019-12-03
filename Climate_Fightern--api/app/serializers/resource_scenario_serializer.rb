class ResourceScenarioSerializer < ActiveModel::Serializer
  attributes :id, :yield
  has_one :resource
  has_one :scenario
end
