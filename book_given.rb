class Book_Given
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def price_in_cents
    Integer(price*100 + 0.5)
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

  book = Book_Given.new("isbn1", 33.80)
  puts "Price = #{book.price}"
  puts "Price in cents = #{book.price_in_cents}"
  book.price_in_cents = 1234
  puts book.price