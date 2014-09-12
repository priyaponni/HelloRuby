class Book
  attr_reader :name, :price
  attr_writer :isbn

=begin
  def isbn=(isbn)
    @isbn = isbn
  end
=end

  def initialize(name, isbn, price)
    @isbn = isbn
    @name = name
    @price = Float(price)
  end

  def to_int
    @price
  end

end

b1 = Book.new('Twilight', 344, 98)
b2 = Book.new('Twilight', 344, 100)
puts b1.to_int + b2.to_int