class PrimeGenerator
  GROWTH_RATE = 10

  def initialize(initial_limit=1000)
    @highest_possible_prime = initial_limit
    @primes = primes_till highest_possible_prime
  end

  def prime(number)
    raise ArgumentError.new("Requires a positive integer") unless number.is_a? Integer and number > 0

    return primes.fetch(number - 1) if primes.length >= number

    @highest_possible_prime = highest_possible_prime * GROWTH_RATE
    @primes = primes_till(highest_possible_prime)

    prime(number)
  end

  private
  attr_accessor :highest_possible_prime, :primes

  def primes_till limit
    possible_primes = Array.new(limit + 1) { |x| x if x > 1 }

    # Make use of Sieve of Eratosthenes: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
    (2..(Math.sqrt(limit)).ceil).each do |index|
      next unless possible_primes[index]
      (index ** 2 .. limit)
        .step(index)
        .each {|multiple| possible_primes[multiple] = nil }
    end

    possible_primes.compact
  end
end
