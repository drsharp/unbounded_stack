
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

  def pop_the_Stack
    tmpStackVar = @list_of_stack_elements.clone
    top_of_the_stack = nil
    while !tmpStackVar[0].nil?
      top_of_the_stack = tmpStackVar[0]
      for i in 0..tmpStackVar.length do  # [a, b, c]  => [b, c] top=b, => [c] top = c,
          tmpStackVar[i] = tmpStackVar[i+1]
        end
      end
      @list_of_stack_elements = lessOne(@list_of_stack_elements, top_of_the_stack)
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
