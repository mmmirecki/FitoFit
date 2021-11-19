class Destination < ApplicationRecord
  belongs_to :activity
  geocoded_by :address
  after_validation :geocode
end
