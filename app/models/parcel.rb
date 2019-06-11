class Parcel < ApplicationRecord
  # one-to-many relation for parcel to zip_code
  belongs_to :zip_code
end
