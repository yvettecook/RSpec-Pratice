require './module.rb'
require './stringify.rb'

class Number

  def intValue
    @value
  end

end

class BigInteger < Number

  include Stringify

  extend Math

  def initialize(value)
    @value = value
  end

end

bigint1 = BigInteger.new(10)
