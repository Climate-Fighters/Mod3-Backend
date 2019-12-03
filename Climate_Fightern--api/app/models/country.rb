class Country < ApplicationRecord
  has_many :country_resources
  has_many :resources, through: :country_resources
end
