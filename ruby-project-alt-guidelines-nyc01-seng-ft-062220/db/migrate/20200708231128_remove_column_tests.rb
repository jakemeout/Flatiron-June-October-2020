class RemoveColumnTests < ActiveRecord::Migration[6.0]
  def change
    remove_column :tests, :test_result_date
  end
end
