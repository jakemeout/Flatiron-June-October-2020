class AddTestReasonColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :test_reason, :text
  end
end
