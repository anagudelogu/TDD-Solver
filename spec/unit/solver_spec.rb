require_relative '../../lib/solver'

RSpec.describe Solver do
  describe 'The factorial method' do
    let(:solver) { Solver.new }

    it 'Should return 1 if the input is 0' do
      factorial_of0 = solver.factorial(0)

      expect(factorial_of0).to eq(1)
    end

    it 'Should raise an error if the number is less than 0' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end

    it 'Should return the multiplication of all integers from 1 to the input' do
      factorial_of3 = solver.factorial(3)
      factorial_of6 = solver.factorial(6)
      factorial_of9 = solver.factorial(9)

      expect(factorial_of3).to eq(6)
      expect(factorial_of6).to eq(720)
      expect(factorial_of9).to eq(362_880)
    end
  end
end
