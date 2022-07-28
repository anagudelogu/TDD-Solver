class Solver
  def factorial(int)
    raise ArgumentError if int.negative?
    return 1 if int.zero?

    factorial(int - 1) * int
  end

  def reverse(str)
    raise TypeError unless str.is_a? String
  end
end
