class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string   :first_name
      t.string   :last_name
      t.text     :address
      t.text     :health_history
      t.text     :health_history
      t.datetime :created_date
    end
  end
end
