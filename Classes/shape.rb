module AreaModule
  def calculateArea(&block)
    yield
  end
end

class Shape
  include AreaModule
  @shapeName
  def initialize(shapeName)
    @shapeName = shapeName
  end
  def drawShape
  end
end