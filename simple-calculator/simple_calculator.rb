

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    unless ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation, "Operation '#{operation}' is not supported"
    end

    unless first_operand.is_a?(Integer) and second_operand.is_a?(Integer)
      raise ArgumentError
    end 

    case operation
    when '+'
      result = first_operand + second_operand
    when '/'
      if second_operand == 0
        return "Division by zero is not allowed."
      end
      result = first_operand / second_operand
    when '*'
      result = first_operand * second_operand
    end
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end

end
