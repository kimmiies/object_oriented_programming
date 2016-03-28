class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate ,y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction #arguement. it needs instructions
#loop , iterating through each value of the instructions.
#later when you get the instructions (gets.chomp) is when you can convert it to any array
#can convert outside the class

  instructions = gets
  instructions = instructions.upcase #reassign, why reassign
  instructions = instructions.split("") #reassign instructions

  instructions.each do |value|
    if value == "M"
      self.move
    elsif value == "R"
      self.turn(value) #try to understand value.
    elsif value == "L"   #this is just telling it to turn
      self.turn(value) #this is prompting its option to turn in a specific way
    else
      puts "HELP ME!!! IM STUCK ON MARS!"
    end
  end


  def move
    if self.direction == "N"
      self.y_coordinate = y_coordinate + 1

    elsif self.direction == "E"
      self.x_coordinate = x_coordinate + 1

    elsif self.direction == "S"
      self.y_coordinate = y_coordinate - 1

    elsif self.direction == "W"
      self.x_coordinate = x_coordinate + 1

    else
     puts "HELP IM STUCK ON MARS!"

    end

  def turn("L")
    if self.direction == "N"
      self.direction == "W"
    elsif self.direction == "W"
      self.direction == "S"
    elsif self.direction == "S"
      self.direction == "E"
    elsif self.direction == "E"
      self.direction == "N"
    else
     puts "HELP IM STUCK ON MARS!"
  end

  def turn("R")
    if self.direction == "N"
      self.direction == "E"
    elsif self.direction == "E"
      self.direction == "S"
    elsif self.direction == "S"
      self.direction == "W"
    elsif self.direction == "W"
      self.direction == "N"
    else
     puts "HELP IM STUCK ON MARS!"
  end


  end

end

rover_one = Rover.new(9,5,"S")
puts "(#{x_coordinate} #{y_coordinate}, #{direction})"
