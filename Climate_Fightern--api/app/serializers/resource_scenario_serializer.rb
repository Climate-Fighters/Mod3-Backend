class ResourceScenarioSerializer < ActiveModel::Serializer
  attributes :id, :yield, :resource, :scenario
  # belongs_to :resource
  # belongs_to :scenario
end
