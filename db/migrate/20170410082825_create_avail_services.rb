class CreateAvailServices < ActiveRecord::Migration[5.0]
  def change
    create_table :avail_services do |t|
      t.belongs_to :patient, foreign_key: true
      t.belongs_to :service, foreign_key: true

      t.timestamps
    end
  end
end
