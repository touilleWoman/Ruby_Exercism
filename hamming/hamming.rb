=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

module Hamming
  def self.compute(first, second)
    if first.length != second.length
        raise ArgumentError
    else
        count = 0
        for i in 0...first.length
          if first[i] != second[i]
            count += 1
          end
        end
        return count
    end
  end
end