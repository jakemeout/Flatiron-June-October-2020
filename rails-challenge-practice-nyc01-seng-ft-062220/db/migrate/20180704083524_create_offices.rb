class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|

      t.timestamps
    end
  end
end
