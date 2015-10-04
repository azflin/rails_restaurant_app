class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.integer :party_size
      t.datetime :reserved_at

      t.timestamps null: false
    end
  end
end
