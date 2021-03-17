require 'spec_helper'

describe 'lib/your_solution.rb' do
  it 'should output "Hello World!" when run' do
    expect(STDOUT).to receive(:puts).with('Hello World!')
    require_relative '../lib/your_solution.rb'  # load/run the file 
  end
end