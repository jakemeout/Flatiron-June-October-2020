require 'pry'
class School 
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        @student = student
        @grade = grade

        #Remember to try this and ask questions tomorrow https://stackoverflow.com/questions/995593/what-does-or-equals-mean-in-ruby
           if @roster[grade] ||= [] 
           @roster[grade] << student
           else 
        end
    end
    def grade(grades)
        @roster[grades]
    end

    def sort
        new_hash = {}
        @roster.each do |key, value| 
           new_hash[key] = value.sort
        end
     new_hash
    end
end

#binding.pry