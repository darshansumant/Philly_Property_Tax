class ZipCode < ApplicationRecord
  # one-to-many relation for parcel to zip_code
  has_many :parcels
end
