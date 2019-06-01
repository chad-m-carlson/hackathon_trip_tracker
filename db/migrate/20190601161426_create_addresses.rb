class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :lat
      t.string :long
      t.string :country
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
