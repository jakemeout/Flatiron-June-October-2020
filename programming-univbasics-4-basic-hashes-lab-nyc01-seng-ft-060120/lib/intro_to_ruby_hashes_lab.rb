<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
=======
def new_hash
  # return an empty hash
  return this_hash = {

  }
end

def my_hash
  # return a valid hash with any key/value pair of your choice
  return this_hash = {
    stuff: "Someting!"
  }
end

def pioneer
  # return a hash with a key of :name and a corresponding value of 'Grace Hopper'
  return this_hash = {
    name: "Grace Hopper"
  }
end

def id_hash_generator(number)
  # return a hash with a key :id assigned to positive integer
  return this_hash = {
    id: number
  }
end

>>>>>>> b4d4428d5ce1216677317debcfc4ba6eb3c38844:lib/intro_to_ruby_hashes_lab.rb
def my_hash_creator(key, value)
  # return a hash that includes the key and value parameters passed into this method
  return this_hash = {
    key => value
  }
end

def read_from_hash(hash, key)
  # return the correct value using the hash and key parameters
  return hash[key]
end

def update_counting_hash(hash, key)
  # given a hash an a key as parameters, return an updated hash
  # if the provided key is not present in the hash, add it and assign it to the value of 1
  # if the provided key is present, increment its value by 1
  if  hash[key]
      hash[key] += 1
    else hash[key] = 1
  end
  return hash
end