class CreateZips < ActiveRecord::Migration[5.2]
  def change
    create_table :zips do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
