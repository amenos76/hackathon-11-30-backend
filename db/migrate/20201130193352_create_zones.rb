class CreateZones < ActiveRecord::Migration[6.0]
  def change
    create_table :zones do |t|
      t.string :countryCode
      t.string :countryName
      t.string :zoneName
      t.integer :gmtOffset
      t.integer :timestamp

      t.timestamps
    end
  end
end
