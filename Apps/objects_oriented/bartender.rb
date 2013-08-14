class Bartender
  attr_reader :name, :hottness
  
  def initialize(name, hottness=50)
    @name = name
    @hottness = hottness
  end
  
  def throw_out?(person)
    person.bac > 0.4
  end
  
  def throw_out(person)
    if throw_out?(person)
      puts "Throwing out #{person}"
    else
      puts "You cool, keep drinkin'."
    end
  end
end