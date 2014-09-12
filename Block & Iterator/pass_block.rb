
# define a class
class PassBlock

  # get the block
  def method1(&block)
    @block_var = block
  end

  # call the block
  def call_block(param1,param2)
    @block_var.call(param1,param2)
  end
end

blockObj = PassBlock.new
blockObj.method1 {|a, b| puts a+b}
blockObj.call_block(5,6)

