class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate ,y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  #def read_instruction
  #end

  #def move
  #end

  #def turn
  #end

end

rover_one = Rover.new(9,5,"S")

puts rover_one.x_coordinate
puts rover_one.y_coordinate
puts rover_one.direction
