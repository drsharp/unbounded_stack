
class UnboundedStack

  def empty?
    list_of_stack_elements.empty?
  end

  def push(a)
    list_of_stack_elements.push(a)
  end

  def pop
    raise "Cannot Pop an empty Stack" if empty?
    list_of_stack_elements.pop
  end

  def top
    raise "Cannot Top an empty Stack" if empty?
    list_of_stack_elements.last
  end

  private

  def list_of_stack_elements
    @list_of_stack_elements ||= Array.new
  end

end
