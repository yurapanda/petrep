class CreateDoneVaccinations < ActiveRecord::Migration[5.0]
  def change
    create_table :done_vaccinations do |t|
      t.belongs_to :vaccination, foreign_key: true
      t.belongs_to :patient, foreign_key: true

      t.timestamps
    end
  end
end
