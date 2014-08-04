class Stack
  def initialize
    @is_empty = true
  end

  def IsEmpty
    @is_empty
  end

  def Push(element)
    @element = element
    @is_empty = false
  end

  def Pop
    @is_empty = true
    top = @element
    @element = nil
    top
  end

end