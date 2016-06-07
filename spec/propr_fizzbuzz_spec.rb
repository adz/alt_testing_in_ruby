require 'spec_helper'
require 'fizzbuzz'
require  'propr'

describe 'Fizzbuzz' do
  include Propr::RSpec

  #it 'will return fizz for 3' do
    #expect('fizz').to eq fizzbuzz(3)
  #end

  #it 'will return fizz for 6' do
    #expect('fizz').to eq fizzbuzz(6)
  #end

  # Property-based test
  property("multiples_of_3_and_5_are_fizzbuzz"){|args|
    x, = *args
    puts args.inspect
    puts x.inspect
    Fizzbuzz.fizzbuzz(x) == "#{x}"
  } .check { unit([2]) }
    #.check {
      #bind(Integer.random){|x|
        #guard(x % 3 != 0 && x % 5 != 0){ unit([x]) }
      #}
    #}
end
