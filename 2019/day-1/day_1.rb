class Spaceship
  def initialize(mass)
    @mass = mass
  end

  def required_fuel
    (@mass / 3).floor - 2
  end

  def fuel_for(mass)
    fuel = (mass / 3).floor - 2
    return 0 if fuel < 1

    fuel + fuel_for(fuel)
  end

  def required_fuel_part_2
    required_fuel + fuel_for(required_fuel)
  end
end

class Day1
  def initialize(input)
    @decoded = input.split("\n").map(&:to_i)
  end

  def output
    @decoded.map { |mass| Spaceship.new(mass) }
            .map(&:required_fuel)
            .sum
  end

  def output_part_2
    @decoded.map { |mass| Spaceship.new(mass) }
            .map(&:required_fuel_part_2)
            .sum
  end
end
