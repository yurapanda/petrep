class CreateServicesToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :services_to_dos do |t|
      t.belongs_to :service, foreign_key: true
      t.boolean :done

      t.timestamps
    end
  end
end
