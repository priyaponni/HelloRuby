require_relative '../Book/csv_reader'

reader = CSVReader.new
ARGV.each { |filename|
  reader.readBooks(filename)
}
reader.calculateTotal
puts "#{reader}"