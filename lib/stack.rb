class Stack
  def initialize
    @elements = []
  end

  def empty?
    @elements.empty?
  end

  def push(element)
    @elements.push(element)
  end

  def pop
    raise "Cannot Pop an empty Stack" if empty?
    @elements.pop
  end

  def top
    raise "Cannot Top an empty Stack" if empty?
    @elements.last
  end

end