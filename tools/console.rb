require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jake = Guest.new("jake") #creates guests
ariel = Guest.new("ariel")
bill = Guest.new("bill")
ted = Guest.new("ted")
neil_degrasse = Guest.new("Neil DeGrasse Tyson") 
david_pogue = Guest.new("David Pogue")




listing1 = Listing.new("Mansion New York","New York") #creates listings
listing2 = Listing.new("Toshi's apartments","Brooklyn")
listing3 = Listing.new("Brooklyn Bowl","Brooklyn")

trip1 = Trip.new(jake, listing1) #creates a trip
trip2 = Trip.new(ariel, listing1)
trip3 = Trip.new(neil_degrasse, listing2)
trip4 = Trip.new(david_pogue, listing2)
trip5 = Trip.new(ted, listing2)
trip6 = Trip.new(bill, listing3)
trip7 = Trip.new(jake, listing2)

binding.pry
0