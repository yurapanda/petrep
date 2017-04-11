class AddMinutesToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :minute_to_finish, :integer
  end
end
