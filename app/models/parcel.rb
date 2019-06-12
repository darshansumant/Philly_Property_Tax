class Parcel < ApplicationRecord
  belongs_to :zip

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Parcel.create! row.to_hash
    end
  end
end
