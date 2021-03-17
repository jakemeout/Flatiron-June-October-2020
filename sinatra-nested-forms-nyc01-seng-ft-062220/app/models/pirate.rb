class Pirate

    attr_accessor :name, :weight, :height

    @@all = []
    def initialize(input)
        @name = input[:name]
        @weight = input[:weight]
        @height = input[:height]
        @@all << self
    end

    def self.all
        @@all
    end



end