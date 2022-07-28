require_relative '../../lib/solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }
  describe 'The factorial method' do
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

  describe 'The reverse method' do
    it 'Should raise an error if the argument is not a string' do
      expect { solver.reverse(true) }.to raise_error(TypeError)
    end

    it 'Should return the reversed string' do
      reversed_str = solver.reverse('hello')
      expect(reversed_str).to eq('olleh')
    end
  end

  fdescribe 'The fizzbuzz method' do
    it 'Should has an integer as argument (Raise error if not)' do
      expect { solver.fizzbuzz('5') }.to raise_error(TypeError)
    end

    it 'Should return a String' do
      expect(solver.fizzbuzz(5).is_a?(String)).to eq(true)
    end

    it "Should return 'fizzbuzz' if the integer is divisible by 3 and by 5" do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it "Should return 'fizz' if the integer is divisible by 3 but not by 5" do
      expect(solver.fizzbuzz(6)).to eq('fizz')
    end

    it "Should return 'buzz' if the integer is divisible by 5 but not by 3" do
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it "Should return Integer turned into string if integer isn't divisible by 3 nor 5" do
      expect(solver.fizzbuzz(13)).to eq('13')
    end
  end
end
