class CreateTestsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.text      :name 
      t.boolean   :pcr_test
      t.boolean   :pcr_result
      t.boolean   :anti_body_test
      t.boolean   :anti_body_result
      t.datetime  :test_sub_date
      t.datetime  :test_result_date 
    end
  end
end
