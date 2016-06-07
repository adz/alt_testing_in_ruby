require 'spec_helper'
require 'propr'

describe "foo" do
  include Propr::RSpec

  # This defines three test cases, one per each `check`
  property("length"){|a| a.length >= 0 }.
  check("abc").
    check("xyz").
    check{ String.random }
end
