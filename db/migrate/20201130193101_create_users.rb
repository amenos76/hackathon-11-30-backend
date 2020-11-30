class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :task
      t.string :location
      t.integer :time

      t.timestamps
    end
  end
end
