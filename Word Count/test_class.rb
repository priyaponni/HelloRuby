require_relative './word_count.rb'
#gem 'unit/test'
require 'minitest/unit'

class MyTestClass < Test::Unit::TestClass

  def test_count_words
    counter = WordCount.new("")
    counter.count_words
    assert_equal([],counter.split_words)
  end

end