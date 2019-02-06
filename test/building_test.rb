require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require './lib/building'
require 'pry'

class BuildingTest < MiniTest::Test
  def test_existence_building_class
    building = Building.new

    assert_instance_of Building, building
  end

  def test_the_building_has_array_for_units
    building = Building.new

    assert_equal [], building.units
  end

  def test_able_add_apartments_to_units
    building = Building.new
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_units(a1)
    building.add_units(b2)

    assert_equal [a1, b2], building.units
  end

  def test_the_average_rent_of_the_rooms
    building = Building.new
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_units(a1)
    building.add_units(b2)


    assert_equal 1099.5, building.average_rent
  end

  def test_add_new_with_hieghest_rent
    building = Building.new
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    spencer = Renter.new("Spencer")
    b2.add_renter(spencer)
    building.add_units(a1)
    building.add_units(b2)

  end
end
