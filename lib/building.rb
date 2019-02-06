class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_units(apartment)
    @units << apartment
  end

  def average_rent
    unit_1 = @units[0].monthly_rent
    unit_2 = @units[1].monthly_rent
    sum = unit_1 + unit_2
    total = sum/2.to_f
  end
end
