class RemoveUsersDupHealthHistoryColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :health_history
  end
end
