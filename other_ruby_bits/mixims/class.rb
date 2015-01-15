require './module.rb'
require './stringify.rb'

class Number

  def intValue
    @value
  end

end

class BigInteger < Number

  include Stringify

  extend Maths

  def initialize(value)
    @value = value
  end

end
