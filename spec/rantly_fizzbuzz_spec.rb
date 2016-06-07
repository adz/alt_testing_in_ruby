require 'spec_helper'

require 'rantly'
require 'rantly/shrinks'
require 'rantly/rspec_extensions' # for 'minitest'

require 'fizzbuzz'

describe 'Fizzbuzz' do
  it 'will return fizz for 3' do
    expect('fizz').to eq Fizzbuzz.fizzbuzz(3)
  end

  it 'will return fizz for 6' do
    expect('fizz').to eq Fizzbuzz.fizzbuzz(6)
  end

  it 'will return Fizzbuzz.fizzbuzz for multiples of 3 and 5' do
    property_of {
      i = integer
      guard i % 3 == 0 && i % 5 != 0 # Comment out one and see poor error
      i
    }.check { |i|
      expect(Fizzbuzz.fizzbuzz(i)).to eq 'fizz'
    }
  end
end


