require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require 'pry'

class RenterTest < MiniTest::Test

  def test_existence_renter_class
    jessie = Renter.new("Jessie")
    
    assert_instance_of Renter, jessie
  end
end
