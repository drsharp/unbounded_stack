
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

    pop_the_stack
  end

  def top
    raise "Cannot Top an empty Stack" if empty?
    list_of_stack_elements.last
  end

  private

  attr_accessor :list_of_stack_elements

  def raise_error(theMessageToRaise)
    raise theMessageToRaise || return
    puts "Message raised: #{theMessageToRaise}"
  end

  def pop_the_stack
    tmpStackVar = list_of_stack_elements.clone
    top_of_the_stack = nil
    while !tmpStackVar[0].nil?
      top_of_the_stack = tmpStackVar[0]
      for i in 0..tmpStackVar.length do  # [a, b, c]  => [b, c] top=b, => [c] top = c,
        tmpStackVar[i] = tmpStackVar[i+1]
      end
    end
    self.list_of_stack_elements = lessOne(list_of_stack_elements, top_of_the_stack)
    return top_of_the_stack
  end


  def lessOne(some_Arr, some_Var)
    some_r = Array.new
    some_r = some_Arr.reverse if !some_Arr.empty?
    new_r = Array.new
    return nil if some_Arr.length == 0
    skip = true
    x = 0
    for i in 0..some_r.length-1 do
      if skip then
        skip = false
        next
      end
      (new_r[x] = some_r[i]) && x = x + 1
    end
    return new_r.reverse || nil
  end

end
