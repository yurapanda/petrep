class AddBelongsToInvoiceInServicesToDos < ActiveRecord::Migration[5.0]
  def change
    add_reference :services_to_dos, :invoice, foreign_key: true
  end
end
