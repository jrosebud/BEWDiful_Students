class Person
  attr_reader :name, :height, :weight
  attr_reader :drink_count, :bac
  
  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
    @bac = 0
    @drink_count = 0
  end
  
  def bmi
    (weight.to_f / (height * height)) * 703
  end
  
  def tolerance
    (bmi * name.length) / 3
  end
  
  def drink(alcohol)
    @drink_count += 1
    @bac += (alcohol.abv / tolerance)
  end
  
  def inspect
    "#{name}, who had #{drink_count} drinks and has a BAC of #{bac}"
  end
  
  # new method first, then old method you want to alias
  alias to_s inspect
end