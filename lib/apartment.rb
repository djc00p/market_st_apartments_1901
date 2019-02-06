class Apartment
  attr_reader :renter
  def initialize(apartment)
    @apartment = apartment
    @renter = nil
  end

  def number
    @apartment[:number]
  end

  def monthly_rent
    @apartment[:monthly_rent]
  end

  def bathrooms
    @apartment[:bathrooms]
  end

  def bedrooms
    @apartment[:bedrooms]
  end

  def add_renter(new_renter)
    @renter = new_renter
  end
end
