class Operator

  def foo
    @foo ||= self.bar
  end

  def bar
    print "Foo-cking Bar"
    return "foobar"
  end

end
