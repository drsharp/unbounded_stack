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
    top = @elements[-1]
    @elements = @elements[0..-2]
    top
  end

end