class AddUserHealthHistoryColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :health_history, :text
  end
end
