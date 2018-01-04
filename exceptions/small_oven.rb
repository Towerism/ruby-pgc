class SmallOven
  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end

  def turn_off
    puts "Turning oven off."
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise "You need to turn the oven on first!"
    end

    if @contents == nil
      raise "There's nothing in the oven!"
    end
    "golden-brown #{contents}"
  end
end

oven = SmallOven.new
oven.turn_on
oven.contents = 'turkey'
puts "Serving #{oven.bake}."
