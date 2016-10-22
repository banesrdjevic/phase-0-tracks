class Calculator
  def add(x,y)
    x + y
  end

  def subtract(x,y)
    x - y
  end

  def multiply(x,y)
    x * y
  end

  def divide(x,y)
    # return "error" if y == 0
    x / y
  end

end

# divide_test = Calculator.new
# p divide_test.divide(9,0)
