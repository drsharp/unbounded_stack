class Stack
  def initialize
    @elements = []
  end

  def IsEmpty
    @elements.empty?
  end

  def Push(element)
    @elements << element
  end

  def Pop
    raise "Cannot Pop an empty Stack" if self.IsEmpty
    top = @elements[-1]
    @elements = @elements[0..-2]
    top
  end

  def Top
    @elements[-1]
  end

end