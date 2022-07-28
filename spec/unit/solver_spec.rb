require_relative '../../lib/solver'

RSpec.describe Solver do
  describe 'The factorial method' do
    it 'Should return 1 if the input is 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end
    it 'Should raise an error if the number is less than 0' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
    it 'Should return the multiplication of all integers from 1 to the input'
  end
end
