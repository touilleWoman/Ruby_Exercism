=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
module Acronym
  def self.compute(line)
    words = line.scan(/\w+/)
    words.map{|word| word[0].upcase}.join
  end
end
