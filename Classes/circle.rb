require_relative "./shape.rb"
class Circle < Shape
  @radius
  def initialize(radius)
    super("Circle")
    @radius = radius
  end

  def area
    calculateArea {puts "Area is #{@radius * @radius}"}
  end

  def calculateArea
    puts "Custom calc Area"
  end

end

mycircle = Circle.new(10)
mycircle.area