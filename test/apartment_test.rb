require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require 'pry'

class ApartmentTest < MiniTest::Test

  def test_existence_apartment_class
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, a1
  end
  def test_apartment_number_can_be_called
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", a1.number
  end

  def test_apartment_monthly_rent_can_be_called
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1200, a1.monthly_rent
  end

  def test_apartment_bathrooms_can_be_called
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1, a1.bathrooms
  end

  def test_apartment_bedrooms_can_be_called
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1, a1.bedrooms
  end

  def test_if_renter
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_nil nil , a1.renter
  end

  def test_add_renter_to_appartment
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter = Renter.new("Jessie")
    a1.add_renter(renter)

    assert_equal renter, a1.renter
  end
end
