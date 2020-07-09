class ExposedPeoplesColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :exposures, :exposed_to, :string
    add_column :exposures, :date_exposed, :datetime
    add_column :tests, :exposure_id, :integer
  end
end
