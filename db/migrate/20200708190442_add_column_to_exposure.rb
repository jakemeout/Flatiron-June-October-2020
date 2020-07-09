class AddColumnToExposure < ActiveRecord::Migration[6.0]
  def change
    add_column :exposures, :user_id, :integer
  end
end
