class AddPrognosisToTest < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :prognosis, :text
  end
end
