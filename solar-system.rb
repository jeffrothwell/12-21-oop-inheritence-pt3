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
