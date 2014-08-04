class Stack
  def initialize
    @element = nil
    @prev_element = nil
    @prev_prev_element = nil
  end

  def IsEmpty
    @element.nil?
  end

  def Push(element)
    @prev_prev_element = @prev_element
    @prev_element = @element
    @element = element
  end

  def Pop
    top = @element
    @element = @prev_element
    @prev_element = @prev_prev_element
    @prev_prev_element = nil
    top
  end

end