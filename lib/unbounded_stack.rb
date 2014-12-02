
class UnboundedStack

  def empty?
    stack.empty?
  end

  def push(a)
    stack.push(a)
  end

  def pop
    raise "Cannot Pop an empty Stack" if empty?
    stack.pop
  end

  def top
    raise "Cannot Top an empty Stack" if empty?
    stack.last
  end

  private

  def stack
    @stack ||= Array.new
  end

end
