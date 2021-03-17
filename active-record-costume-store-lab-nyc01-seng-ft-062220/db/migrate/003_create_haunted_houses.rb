# Create your haunted_houses migration here

# !!! Before you run rake db:migrate, remember to fill out the class CreateCostumeStore < ActiveRecord::Migration
  
# The haunted_houses table will have eight columns:

# name
# location
# theme
# price
# whether they're family friendly or not
# opening date
# closing date
# long description
class CreateHauntedHouses < ActiveRecord::Migration[5.1]
def change
        create_table :haunted_houses do |t|
            t.text :name
            t.string :location
            t.text :theme
            t.integer :price
            t.boolean :family_friendly
            t.date :opening_date
            t.date :closing_date
            t.text :description
        end
    end
end