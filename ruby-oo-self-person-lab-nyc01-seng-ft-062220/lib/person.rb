require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account= 25, happiness= 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(num)
        if num > 10 
            @happiness = 10
        elsif
            num <= 0 
            @happiness = 0
        else
            @happiness = num 
        end
    end

    def hygiene=(num)
        if num > 10 
            @hygiene = 10
        elsif
            num <= 0 
            @hygiene = 0
        else
            @hygiene = num 
        end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end
    
    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
          objects.each { |i| i.happiness -= 2}
          first, second = ["partisan", "lobbyist"]
        elsif topic == "weather"
          objects.each { |i| i.happiness += 1}
          first, second = ["sun", "rain"]
        end
        first ||= "blah"
        second ||= "blah"
        base_string = "blah blah #{first} blah #{second}"
      end

end
# p1 = Person.new("Jim")
# binding.pry
# 0