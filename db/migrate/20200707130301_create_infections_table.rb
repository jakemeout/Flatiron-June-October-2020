class CreateInfectionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :infections do |t|
      t.string    :name
      t.boolean   :infected
      t.text      :symptom
      t.datetime  :symptom_start_date
      t.datetime  :symptom_end_date
      t.boolean   :hospitalization
      t.datetime  :hospitalization_start_date
      t.datetime  :hospitalization_end_date
    end
  end
end
