class CreateBoardingBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :boarding_bookings do |t|
      t.belongs_to :patient, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :confirmed

      t.timestamps
    end
  end
end
