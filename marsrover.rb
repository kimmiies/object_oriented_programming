class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate ,y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction(instructions) #arguement. it needs instructions
#loop , iterating through each value of the instructions.
#later when you get the instructions (gets.chomp) is when you can convert it to any array
#can convert outside the class
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

  #is this if statement set up correctly?
  #does it only have to delegate to more specific behaviour



  #def turn
  #end

end

rover_one = Rover.new(9,5,"S")

rover_one.read_instruction
