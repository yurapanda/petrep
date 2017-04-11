class CreateWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :weights do |t|
      t.decimal :kilograms
      t.boolean :current
      t.belongs_to :patient, foreign_key: true

      t.timestamps
    end
  end
end
