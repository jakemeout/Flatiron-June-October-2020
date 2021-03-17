class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :tests, :name, :facility_name 
  end
end
