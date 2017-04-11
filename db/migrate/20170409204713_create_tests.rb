class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :name
      t.belongs_to :patient, foreign_key: true

      t.timestamps
    end
  end
end
