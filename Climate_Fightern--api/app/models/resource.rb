class Resource < ApplicationRecord
  has_many :country_resources
  has_many :countries, through: :country_resources
end

