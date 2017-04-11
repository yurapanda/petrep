class AddDiagnosisToTest < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :diagnosis, :text
  end
end
