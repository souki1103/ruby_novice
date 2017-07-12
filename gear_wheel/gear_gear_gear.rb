class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, wheel)
    @chainring = chainring
    @cog       = cog
    @wheel     = wheel
  end

  def gear_inches
    ratio * wheel.diameter
  end

# ...
end

class Wheel
  attr_reader :rim, :tire
  def initialize(rim, tire)
    @rim        = rim
    @tire       = tire
  end

  def diameter
    rim + (tire * 2)
  end
#...
end

p Gear.new(52, 11, wheel.new(26, 1.5)).gear_inches