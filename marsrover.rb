class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

#These now become methods and can be called on the Rover.
#Ie. Can call the x_coordinate on itself and re-assign its value

  def initialize(x_coordinate = 0 ,y_coordinate = 0, direction = "N")
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instructions

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
end

#call these new methods on itself (the rover)
#Instead of one turn method that accepts a value, can we have two turn methods? leftturn & rightturn

  def move
    if @direction == "N"
      @y_coordinate += 1
#I guess this increments the y_coordinate, reassigns it and stores it as an instance variable

#previously wrote that out the long way:
      #self.y_coordinate = @y_coordinate + 1

    elsif @direction == "E"
      @x_coordinate += 1
      #self.x_coordinate = @x_coordinate + 1
    elsif @direction == "S"
      @y_coordinate -= 1
      #self.y_coordinate = @y_coordinate - 1
    elsif @direction == "W"
      @x_coordinate -= 1
      #self.x_coordinate = @x_coordinate - 1
    else
     puts "HELP IM STUCK ON MARS!"
   end
 end

  def leftturn
    if @direction == "N"
      @direction = "W"
#rewritten! instead of self.direction = "W". not sure if @direction = "W" still reassigns it
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    elsif @direction == "E"
      @direction = "N"
    else
     puts "HELP IM STUCK ON MARS!"
   end
  end

  def rightturn
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    elsif @direction == "W"
      @direction = "N"
    else
     puts "HELP IM STUCK ON MARS!"
   end
  end

    def output
      puts "x_coordinate: #{@x_coordinate}\ny_coordinate: #{@y_coordinate}\ndirection: #{@direction}"
    end

end

rover_one = Rover.new(0,0,"N")
rover_one.read_instructions
rover_one.output
