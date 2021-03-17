class Ship

    attr_accessor :name, :type, :booty

    @@all = []
    def initialize(input)
        @name = input[:name]
        @type = input[:type]
        @booty = input[:booty]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end




end