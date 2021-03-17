class NewColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :exposures, :test_id, :integer
  end
end
