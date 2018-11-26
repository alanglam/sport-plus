class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :sport, foreign_key: true
      t.datetime :date
      t.integer :duration
      t.string :address
      t.integer :capacity
      t.references :user, foreign_key: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
