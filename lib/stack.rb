class Stack
  def initialize
    @is_empty = true
  end

  def IsEmpty
    @is_empty
  end

  def Push(element)
    @is_empty = false
  end

  def Pop
    @is_empty = true
    return nil
  end

end