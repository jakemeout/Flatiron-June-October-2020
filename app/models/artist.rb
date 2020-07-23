class Artist < ApplicationRecord
    has_many :artist_instruments
    has_many :instruments, through: :artist_instruments
    
    validates :title, :name, presence: true
    validates :name, uniqueness: true

    
end
