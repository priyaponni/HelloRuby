class HashTry

  $hash_not_created = 'Hash not yet created'
  def initialize
    @india = 'nil'
    # makeHash  ## ideally hast to be created during initialization
  end

  def makeHash

    puts '------- make hash ----------'
    @india = Hash.new('emptyOne')
    @india = {
        'name'=> 'INDIA',
        'states'=> [
            {
                'name' => 'TN',
                'language' => 'Tamil'
            },
            {
                'name' => 'KA',
                'language' => 'Kannada'
            }
        ]
    }
  end

  def printAll
    puts '------- Print All ----------'
    @india.each {|key, value|
                      puts "#{key} => #{value}"
                      puts value.class
                      value = Array(value)
                      puts value.class
                      if(value.is_a?(Array))
                        value.each { |obj|
                          puts obj
                        }
                      end
                }
  end

  def funTries
    puts '------- Fun Tries ----------'
    # check if the hash is created yet
    if(@india.is_a?(Hash)) then

      # access instance variable
      puts @india['states'][0]

      # should print default
      puts @india['hi']

      # 'p' prints nil
      p "Should print nil - #{@india['hi']}"
    else

      # 'makeHash' method is not yet called
      puts $hash_not_created

    end
  end

  def setDefault

    puts '------- set Default ----------'
    # set a default value for the hash
    @india = Hash.new{|hash, key| hash[key] = "Key Not found"}

    # new value
    @india['population']='10 C'
    p @india['population']
    puts '\n' # no effect

    # non-existing value
    p @india['just']
    p @india['just'].upcase!
    p @india['another']

    # convert hash to string
    @india = 'Hash converted to string'
  end

end


