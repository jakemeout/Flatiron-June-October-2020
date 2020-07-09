class ChangeMoreColumnsExposure < ActiveRecord::Migration[6.0]
  def change
    change_column :exposures, :symptom_start_date, :string
    change_column :exposures, :symptom_end_date, :string
  end
end
