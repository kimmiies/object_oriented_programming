class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

#These now become methods and can be called on the Rover.
#Ie. Can call the x_coordinate on itself and re-assign its value

  def initialize(x_coordinate = 0 ,y_coordinate = 0, direction = "N")
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

#not sure if the parameters need to include default values or not

  def read_instruction

  instructions = gets.chomp
  instructions = instructions.upcase
  instructions = instructions.split("")

  instructions.each do |value|
    if value == "M"
      self.move
    elsif value == "R"
      self.rightturn
    elsif value == "L"
      self.leftturn
    else
      puts "HELP ME!!! IM STUCK ON MARS!"
    end
  end

#call these new methods on itself (the rover)
#Instead of one turn method that accepts a value, can we have two turn methods? leftturn & rightturn
#getting this error `block in read_instruction': undefined method `leftturn'

  def move
    if @direction == "N"
      self.y_coordinate = @y_coordinate + 1

#calling the y_coordinate method on itself (the rover) and reassigning it to @y_coordinate + 1

    elsif @direction == "E"
      self.x_coordinate = @x_coordinate + 1

    elsif @direction == "S"
      self.y_coordinate = @y_coordinate - 1

    elsif @direction == "W"
      self.x_coordinate = @x_coordinate + 1

    else
     puts "HELP IM STUCK ON MARS!"
   end
 end

  def leftturn
    if @direction == "N"
      self.direction = "W"

#calling the define method on itself (the rover) and reassigning it's value
#is this properly reassigning it?

    elsif @direction == "W"
      self.direction = "S"
    elsif @direction == "S"
      self.direction = "E"
    elsif @direction == "E"
      self.direction = "N"
    else
     puts "HELP IM STUCK ON MARS!"
   end
  end

  def rightturn
    if @direction == "N"
      self.direction = "E"
    elsif @direction == "E"
      self.direction = "S"
    elsif @direction == "S"
      self.direction = "W"
    elsif @direction == "W"
      self.direction = "N"
    else
     puts "HELP IM STUCK ON MARS!"
   end
  end

end
end

rover_one = Rover.new(9,9,"S")
rover_one.read_instruction
