class ScenarioSerializer < ActiveModel::Serializer
  attributes :id, :name
  # has_many :resource_scenarios
end
