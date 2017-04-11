class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :patient, foreign_key: true
      t.date :start_date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
