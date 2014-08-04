class Stack
  def initialize
    @element = nil
  end

  def IsEmpty
    @element.nil?
  end

  def Push(element)
    @element = element
  end

  def Pop
    top = @element
    @element = nil
    top
  end

end