class AddResultValueToResults < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :result_value, :decimal
  end
end
