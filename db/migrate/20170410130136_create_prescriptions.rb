class CreatePrescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.string :prescription_frequency
      t.belongs_to :test, foreign_key: true

      t.timestamps
    end
  end
end
