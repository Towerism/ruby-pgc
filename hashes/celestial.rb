class CelestialBody
  attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'
bodies = Hash.new(default_body)

bodies['Mars'].name = 'Mars'

bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'

bodies['Venus'].name = 'Venus'

p bodies['Venus']
p bodies['Mars']
p bodies['Europa']