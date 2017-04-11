class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :patient, foreign_key: true
      t.boolean :paid

      t.timestamps
    end
  end
end
