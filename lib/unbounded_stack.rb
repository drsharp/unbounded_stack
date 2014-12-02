
class UnboundedStack
  def initialize
    self.list_of_stack_elements = Array.new
  end

  def empty?
    list_of_stack_elements.empty?
  end

  def push new_element
    list_of_stack_elements.push(new_element)
  end

  def pop
    raise_error("Cannot Pop an empty Stack") if empty?

    list_of_stack_elements.pop
  end

  def top
    raise "Cannot Top an empty Stack" if empty?
    list_of_stack_elements.last
  end

  private

  attr_accessor :list_of_stack_elements

  def raise_error(theMessageToRaise)
    return unless theMessageToRaise

    puts "Message raised: #{theMessageToRaise}"
    raise theMessageToRaise
  end
end
