# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all
   
Artist.create(id:1, name: 'Daft Punk')
Song.create(title: 'The Grid', artist_id:1)
Song.create(title: 'Voyager', artist_id:1)

Artist.create(id:2, name: 'Radiohead')
Song.create(title: 'Paranoid Andriod', artist_id:2)
Song.create(title: 'Mixamatosis', artist_id:2)

Artist.create(id:3, name: 'Paul Simon')
Song.create(title: 'Diamonds on the soles of her shoes', artist_id:3)
Song.create(title: 'Graceland', artist_id:3)