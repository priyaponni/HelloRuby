### different tries

# some basic syntax
def learn_basic
  puts 'hi'.equal?('HI')
  myarray = %w{1 cat deer 4.44}
  puts myarray[3].to_f
  puts(nil)
  p nil
end

# import the required file
require_relative './hash_try'

def learn_hash
  # create instance for HashArray
  obj = HashTry.new
  obj.funTries

  obj.makeHash
  obj.printAll
  obj.funTries
  obj.setDefault
  obj.funTries

  puts '\n------- inside main ----------'
  # making obj as a string
  obj = 'something else'
  p obj
end

def learn_conditions

  while line = gets.chomp
    if(line == 'END') then
        break
    end
    puts line
  end


  puts '----- SECOND WHILE ------ '
  while (line1 = gets.chomp) && (line1 != 'END')
    puts line1
  end

end

learn_hash

