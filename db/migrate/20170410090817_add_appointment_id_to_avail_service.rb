class AddAppointmentIdToAvailService < ActiveRecord::Migration[5.0]
  def change
    add_reference :avail_services, :appointment, foreign_key: true
  end
end
