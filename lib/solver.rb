class Solver
  def factorial(int)
    raise ArgumentError if int.negative?
    return 1 if int.zero?

    factorial(int - 1) * int
  end

  def reverse(str)
    raise TypeError unless str.is_a? String

    str.reverse
  end

  def fizzbuzz(int)
    raise TypeError unless int.is_a? Integer

    return 'fizzbuzz' if (int % 5).zero? && (int % 3).zero?
    return 'fizz' if (int % 3).zero?

    ''
  end
end
