class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true
      t.belongs_to :breed, foreign_key: true
      t.belongs_to :gender, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
