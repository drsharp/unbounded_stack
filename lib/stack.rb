class Stack
  def initialize
    @elements = []
  end

  def IsEmpty
    @elements.empty?
  end

  def push(element)
    @elements << element
  end

  def Pop
    top = self.Top
    @elements = @elements[0..-2]
    top
  end

  def top
    raise "Cannot Top an empty Stack" if self.IsEmpty
    @elements.last
  end

end