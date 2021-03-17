require 'spec_helper'
require 'pry'

describe 'Finding data' do

  scale = [2,3,4,5]
  scale_2 = [6,5,4,3]
  hill = [1,2,3,4,5,4,3,2,1]
  valley = [5,4,3,2,1,0,1,2,3,4,5]
  zig_zag = [500,4,1000,5,250]

  describe 'find_min_value(array)' do
    it 'takes in an array of integers and returns the lowest value integer' do
      expect(find_min_value(scale)).to eq(2)
      expect(find_min_value(scale_2)).to eq(3)
      expect(find_min_value(hill)).to eq(1)
      expect(find_min_value(valley)).to eq(0)
      expect(find_min_value(zig_zag)).to eq(4)
    end
  end


end
