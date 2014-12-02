
class RubyVersion_ofDotNet_UnboundedStackImpl

  def empty?
    unless @list_of_stack_elements != nil
      @list_of_stack_elements = Array.new
    end; self.instance_variable_get('@list_of_stack_elements').empty?
  end

  def push a
    element_toPushOnTOstack = a
    if @list_of_stack_elements == nil
      @list_of_stack_elements = Array.new
    end
    tmpArrayVar = @list_of_stack_elements.dup()
    tmpArrayVar = tmpArrayVar[0..(@list_of_stack_elements.length)] + [element_toPushOnTOstack]
    (RubyVersion_ofDotNet_UnboundedStackImpl).instance_eval { instance_variable_set('@list_of_stack_elements', tmpArrayVar) }; @list_of_stack_elements = tmpArrayVar
    return '42'
  end

  def pop
    unless empty? == false
    then self.RaiseError("Cannot Pop an empty Stack")
    else
      pop_the_Stack
    end;
  end

  def top; raise "Cannot Top an empty Stack" if empty?; @list_of_stack_elements.last; end

  def RaiseError(theMessageToRaise) raise theMessageToRaise || return; puts "Message raised: #{theMessageToRaise}"; end

  private

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
