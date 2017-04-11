class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :name
      t.decimal :normal_low
      t.decimal :normal_high
      t.belongs_to :test, foreign_key: true

      t.timestamps
    end
  end
end
