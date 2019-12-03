class ResourceScenarioSerializer < ActiveModel::Serializer
  attributes :id, :yield#, :scenario
  # belongs_to :resource
  belongs_to :scenario
  # could write an instance method that only passes the name of the resource scenario
end
