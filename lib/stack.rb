class Stack < Array

  def pop
    raise "Cannot Pop an empty Stack" if empty?
    super
  end

  def top
    raise "Cannot Top an empty Stack" if empty?
    last
  end

end