class Guest

    attr_accessor :name, :trip

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def listings
        # listing_by_guest_instances = 
        
        trips.map {|x| x.listing}
        # Trip.all.select do |trips|
        #     trips.guest.name == self.name
        # end
    end
    
    def trips
        Trip.all.select do |guests|
            guests.guest == self 
        end
    end

    def trip_count
        self.trips.count 
    end
    
    def self.find_all_by_name(name)
        Trip.all.select do |guests|
            guests.guest.name == name
        end
    end

    def self.pro_traveler
        Trip.all.select {|guests| guests.guest.trip_count > 1}
    end


         
end