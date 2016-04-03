require 'minitest/autorun'
require_relative '../src/prime_formatter.rb'

describe PrimeFormatter do
  before do
    @printer = PrimeFormatter.new
  end

  describe '#table' do
    it 'formats the table correctly for 3 primes' do
      expected_table = "Primes\t2\t3\t5
2\t4\t6\t10
3\t6\t9\t15
5\t10\t15\t25"

      @printer.table(3).must_equal expected_table
    end

    it 'formats the table correctly for 10 primes' do
      expected_table = "Primes\t2\t3\t5\t7\t11\t13\t17\t19\t23\t29\n2\t4\t6\t10\t14\t22\t26\t34\t38\t46\t58\n3\t6\t9\t15\t21\t33\t39\t51\t57\t69\t87\n5\t10\t15\t25\t35\t55\t65\t85\t95\t115\t145\n7\t14\t21\t35\t49\t77\t91\t119\t133\t161\t203\n11\t22\t33\t55\t77\t121\t143\t187\t209\t253\t319\n13\t26\t39\t65\t91\t143\t169\t221\t247\t299\t377\n17\t34\t51\t85\t119\t187\t221\t289\t323\t391\t493\n19\t38\t57\t95\t133\t209\t247\t323\t361\t437\t551\n23\t46\t69\t115\t161\t253\t299\t391\t437\t529\t667\n29\t58\t87\t145\t203\t319\t377\t493\t551\t667\t841"

      @printer.table(10).must_equal expected_table
    end
  end
end
