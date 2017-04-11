class AddConfirmedToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :confirmed, :boolean
  end
end
