# don't forget to add: require 'pry'


def state_log(star_date)
 p "Captain's Log, star date #{star_date}."
end

def engage
  date = (rand(100000) + 400000) / 10.0
  puts state_log(date)
end
