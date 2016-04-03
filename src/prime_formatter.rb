require_relative './prime_generator.rb'
require 'matrix'

class PrimeFormatter
  def self.run(number_of_primes)
    formatter = PrimeFormatter.new
    puts formatter.table(number_of_primes)
  end

  def initialize(generator=PrimeGenerator.new)
    @generator = generator
  end

  def table(number_of_primes)
    table = Matrix.build(number_of_primes + 1, number_of_primes + 1) do |row, column|
      next case
           when (row == 0 and column == 0)
             "Primes"
           when row == 0
             @generator.prime(column)
           when column == 0
             @generator.prime(row)
           else
             @generator.prime(column) * @generator.prime(row)
           end
    end

    table.to_a.map { |row| row.join("\t") }.join("\n")
  end
end
