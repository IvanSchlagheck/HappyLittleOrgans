class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :starts_on
      t.date :ends_at
      t.references :user, null: false, foreign_key: true
      t.references :organ, null: false, foreign_key: true

      t.timestamps
    end
  end
end
