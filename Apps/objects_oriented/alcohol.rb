class Alcohol
  attr_reader :type, :abv, :brand
  
  def initialize(type, abv, brand)
    @type = type
    @abv = abv
    @brand = brand
  end
end