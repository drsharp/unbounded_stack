describe "Stack" do

  it "creates a Stack and verifies that IsEmpty is true." do
    stack = Stack.new
    expect(stack.IsEmpty).to be(true)
  end

end