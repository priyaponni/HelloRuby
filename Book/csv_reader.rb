require 'csv'
require '../Book/book'

class CSVReader
  def initialize
    @book_in_store = []
    @total = 0
  end

  def readBooks(csvFile)
    i = 0
    CSV.foreach(csvFile, headers:true) { |row|
      #puts row
      @book_in_store << Book.new(row['NAME'],row['ISBN'], row['ISBN'])
    }
  end

  def calculateTotal
    @book_in_store.each{ |book|
      puts book
      @total += book.price
    }
    @total
  end

  def to_s
    "Total is #{@total}"
  end

end