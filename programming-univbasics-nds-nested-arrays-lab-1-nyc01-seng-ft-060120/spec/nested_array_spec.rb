require 'spec_helper'

describe 'When a learning to build nested arrays,' do
  it 'the assembled_matrix method returns a nested array made from two constants, CONVENTIONAL_PRODUCE and ORGANIC_PRODUCE' do
    expect(assembled_matrix).to eq([CONVENTIONAL_PRODUCE, ORGANIC_PRODUCE])
  end

  it 'the sorted_matrix method returns a nested array made from two constants with sorted elements' do
    expect(sorted_matrix).to eq([CONVENTIONAL_PRODUCE.sort, ORGANIC_PRODUCE.sort])
  end
end

describe 'When a learning to perform lookups in nested arrays,' do
  describe 'when given a matrix, row, and column argument,' do
    it 'the matrix_lookup method returns the requested value' do
      expect(matrix_lookup(assembled_matrix, 1, 1)).to eq("Potatoes")
      expect(matrix_lookup(sorted_matrix, 1, 1)).to eq("Avocadoes")
    end 
  end 
end

describe 'When a learning to update cells in nested arrays,' do
  describe 'when given a matrix, row, column, and new_value argument,' do
    it 'the matrix_update method returns an updated matrix' do
      local_copy_of_matrix = assembled_matrix.dup
      result = matrix_update(local_copy_of_matrix, 0, 2, "Lemons")
      expect(result[0]).to eq(["Grapefruit", "Pineapple", "Lemons", "Watermelon", "Eggplant"])
      result = matrix_update(result, 0, 2, "Onions")
      expect(result[0]).to eq(["Grapefruit", "Pineapple", "Onions", "Watermelon", "Eggplant"])
    end
  end
end
