require 'spec_helper'
require 'fizzbuzz'
require 'rubycheck'

describe 'Fizzbuzz' do
  it 'will return fizz for 3' do
    expect('fizz').to eq Fizzbuzz.fizzbuzz(3)
  end

  it 'will return fizz for 6' do
    expect('fizz').to eq Fizzbuzz.fizzbuzz(6)
  end

  module RubyCheck
    def self.gen_multiple_of_3_and_not_5
      i = gen_int.abs
      r = i - (i % 3)
      if (r % 5 == 0) 
        r - 3
      else
        r
      end
    end
  end

  it 'will return fizz for multiples of 3' do
    prop_fizzes = -> i { Fizzbuzz.fizzbuzz(i) == 'fizz' }
    result = RubyCheck.for_all(prop_fizzes, [:gen_multiple_of_3_and_not_5])
    expect(result).to eq true
  end
end


