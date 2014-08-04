require 'stack'

describe "Stack" do
  let(:stack) { Stack.new }

  it "creates a Stack and verifies that IsEmpty is true." do
    expect(stack.IsEmpty).to be(true)
  end

  it "Pushes a single object on the Stack and verifies that IsEmpty is false" do
    stack.Push("first element")
    expect(stack.IsEmpty).to be(false)
  end

  it "Push a single object, Pop the object, and verify that IsEmpty is true." do
    stack.Push("first element")
    stack.Pop
    expect(stack.IsEmpty).to be(true)
  end

  it "Push a single object, remembering what it is; Pop the object, and verify that the two objects are equal." do
    expected = 1234
    stack.Push(expected)
    actual = stack.Pop
    expect(actual).to eq(expected)
  end

end