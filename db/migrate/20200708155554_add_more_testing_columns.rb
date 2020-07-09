class AddMoreTestingColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :tests, :test_sub_date, :string
    change_column :tests, :test_sub_date, :string
    change_column :exposures, :hospitalization_start_date, :string
    change_column :exposures, :hospitalization_end_date, :string
    change_column :exposures, :date_exposed, :string
end
