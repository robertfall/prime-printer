require 'minitest/autorun'
require_relative '../src/prime_generator.rb'

KNOWN_PRIMES = {
  1 => 2,
  2 => 3,
  3 => 5,
  10 => 29,
  100 => 541,
  1000 => 7919
}

describe PrimeGenerator do
  before do
    @generator ||= PrimeGenerator.new
  end

  describe '#prime' do
    KNOWN_PRIMES.each do |key, value|
      it "returns the correct prime for #{key}" do
        @generator.prime(key).must_equal value
      end
    end

    it 'raises an error if passed anything other than a positive integer' do
      lambda { @generator.prime(0) }.must_raise ArgumentError
      lambda { @generator.prime(-1) }.must_raise ArgumentError
      lambda { @generator.prime(-536) }.must_raise ArgumentError
      lambda { @generator.prime(112.3) }.must_raise ArgumentError
    end
  end
end
