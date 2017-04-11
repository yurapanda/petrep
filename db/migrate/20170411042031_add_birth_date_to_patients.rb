class AddBirthDateToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :birth_date, :date
  end
end
