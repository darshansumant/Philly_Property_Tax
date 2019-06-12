class Zip < ApplicationRecord
  has_many :parcels

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Zip.create! row.to_hash
    end
  end
end
