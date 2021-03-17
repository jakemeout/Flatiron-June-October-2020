<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
=======
def new_hash
<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
  # return an empty hash
  return this_hash = {

=======
  return this_hash = {
    
>>>>>>> 941c3a0413fef6ebac0d632a047d6279d3f3ba53:intro_to_ruby_hashes_lab.rb
  }
end

def my_hash
<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
  # return a valid hash with any key/value pair of your choice
=======
>>>>>>> 941c3a0413fef6ebac0d632a047d6279d3f3ba53:intro_to_ruby_hashes_lab.rb
  return this_hash = {
    stuff: "Someting!"
  }
end

def pioneer
<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
  # return a hash with a key of :name and a corresponding value of 'Grace Hopper'
=======
>>>>>>> 941c3a0413fef6ebac0d632a047d6279d3f3ba53:intro_to_ruby_hashes_lab.rb
  return this_hash = {
    name: "Grace Hopper"
  }
end

<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
def id_hash_generator(number)
  # return a hash with a key :id assigned to positive integer
  return this_hash = {
    id: number
=======
def id_generator
  return this_hash = {
    id: 1
>>>>>>> 941c3a0413fef6ebac0d632a047d6279d3f3ba53:intro_to_ruby_hashes_lab.rb
  }
end

>>>>>>> b4d4428d5ce1216677317debcfc4ba6eb3c38844:lib/intro_to_ruby_hashes_lab.rb
def my_hash_creator(key, value)
<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
  # return a hash that includes the key and value parameters passed into this method
=======
>>>>>>> 941c3a0413fef6ebac0d632a047d6279d3f3ba53:intro_to_ruby_hashes_lab.rb
  return this_hash = {
    key => value
  }
end

def read_from_hash(hash, key)
<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
  # return the correct value using the hash and key parameters
=======
>>>>>>> 941c3a0413fef6ebac0d632a047d6279d3f3ba53:intro_to_ruby_hashes_lab.rb
  return hash[key]
end

def update_counting_hash(hash, key)
<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
  # given a hash an a key as parameters, return an updated hash
  # if the provided key is not present in the hash, add it and assign it to the value of 1
  # if the provided key is present, increment its value by 1
=======
>>>>>>> 941c3a0413fef6ebac0d632a047d6279d3f3ba53:intro_to_ruby_hashes_lab.rb
  if  hash[key]
      hash[key] += 1
    else hash[key] = 1
  end
  return hash
<<<<<<< HEAD:programming-univbasics-4-abstracting-work-with-hashes-lab-nyc01-seng-ft-060120/lib/intro_to_ruby_hashes_lab.rb
end
=======
end
>>>>>>> 941c3a0413fef6ebac0d632a047d6279d3f3ba53:intro_to_ruby_hashes_lab.rb
