class Zip < ApplicationRecord
  # one-to-many relation parcel-to-zip
  has_many :parcels
end
