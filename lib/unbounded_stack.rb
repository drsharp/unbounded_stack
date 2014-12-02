class UnboundedStack

  def initialize
    @elements = []
  end

  def empty?
    @elements.empty?
  end

  def push a
    @elements << a
  end

  def pop
    raise_error("Cannot Pop an empty Stack") if @elements.empty?
    @elements.pop
  end

  def top
    raise_error("Stack is empty") if @elements.empty?
    @elements.last
  end

  private

  def raise_error(message)
    puts "Message raised: #{message}"
    raise message
  end
end
