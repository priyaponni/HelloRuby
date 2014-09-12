require 'active_record'

class Book < ActiveRecord::Base
  @name
end

b = Book.create(name: 'Twilight')