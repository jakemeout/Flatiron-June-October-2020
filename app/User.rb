class User < ActiveRecord::Base
has_many :exposures
has_many :tests
end