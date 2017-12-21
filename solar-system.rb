require "pp"
class System

  def initialize
    @bodies = []
  end

  def bodies
    @bodies
  end

  def add_body(body)
    @bodies << body
  end

  def total_mass
    total_mass = 0
    @bodies.each do |body|
      total_mass += body.mass
    end
    total_mass
  end

end

class Body

  def initialize(name, mass, system)
    @name = name
    @mass = mass
    system.add_body(self)
  end

  def name
    @name
  end

  def mass
    @mass
  end
end

class Planet < Body

  def initialize(name, mass, system, day, year)
    super(name, mass, system)
    @day = day
    @year = year
  end

  def day
    @day
  end

  def year
    @year
  end

end

class Star < Body

  def initialize(name, mass, system, type)
    super(name, mass, system)
    @type = type
  end

  def type
    @type
  end

end

class Moon < Body

  def initialize(name, mass, system, month, planet)
    super(name, mass, system)
    @month = month
    @planet = planet
  end

  def month
    @month
  end

  def planet
    @planet
  end

end

sol = System.new

sun = Star.new("Sun", 3485747828, sol, "G-star")
earth = Planet.new("Earth", 5747828, sol, 24, 1)
moon = Moon.new("Moon", 247828, sol, 1, earth)

pp earth
pp sun
pp moon
puts "The sun's mass is #{sun.mass} Kg"
puts "The Earth's day is #{earth.day} hours long"
puts "The moon's planet is #{moon.planet.name}"
puts "Total mass in the solar system Sol is #{sol.total_mass} Kg"
