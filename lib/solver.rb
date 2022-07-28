class Solver
  def factorial(int)
    raise ArgumentError if int.negative?

    1 if int.zero?
  end
end
