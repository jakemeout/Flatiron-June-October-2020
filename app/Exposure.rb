class Exposure < ActiveRecord::Base
    has_many :users
    has_many :tests
end
