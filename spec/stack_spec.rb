require 'stack'

describe "Stack" do

  it "creates a Stack and verifies that IsEmpty is true." do
    stack = Stack.new
    expect(stack.IsEmpty).to be(true)
  end

  it "Pushes a single object on the Stack and verifies that IsEmpty is false" do
    stack = Stack.new
    stack.Push("first element")
    expect(stack.IsEmpty).to be(false)
  end

end