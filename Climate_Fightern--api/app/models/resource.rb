class Resource < ApplicationRecord
  has_many :country_resources
  has_many :countries, through: :country_resources
  has_many :resource_scenarios
  has_many :scenarios, through: :resource_scenarios
end

