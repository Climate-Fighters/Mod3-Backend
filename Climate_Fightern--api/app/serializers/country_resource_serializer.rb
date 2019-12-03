class CountryResourceSerializer < ActiveModel::Serializer
  attributes :id, :production#, :resource
  # belongs_to :country
  belongs_to :resource
end
