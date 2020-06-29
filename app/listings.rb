# create files for your ruby classes in this directory
class Listing
    attr_accessor :name, :city, :trip, :guest 
   
    @@all = []
    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all 
    end

    def guests
        guests = Trip.all.select do |trips|
        trips.listing == self
        end
        trips.map do |x| 
            x.guest.name
        end
    end

    def trips
        Trip.all.select do |trp|
           trp.listing == self 
        end
    end
    
    def trip_count
        trips.count 
    end

    def self.find_all_by_city(city)
        Trip.all.select do |listings|
            listings.listing.city == city
        end
    end

    def self.most_popular 
    #     listing_names = Trip.all.map do |listings|
    #     listings.listing.name
    #     end
    #     listing_names.max
    # end
    Trip.all.max_by {|ele| Trip.all.count(ele)} 
    end
end