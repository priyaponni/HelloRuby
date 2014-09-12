require 'csv'

def read_csv(row, result)
  res = ""
  until row.empty?
    if(row =~ /,"/)
      #row = row.gsub(/"/, '""')
      puts row
      puts row.index(/,/)
    end
  end
  puts entry
end

result = ""
f = CSV.foreach("books1.csv",headers: true) do |row|
  puts row
  read_csv(row, result)
end
