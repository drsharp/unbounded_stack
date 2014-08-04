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

  it "Push three objects, remembering what they are; Pop each one, and verify that they are correct." do
    pushed1 = "1"
    stack.Push(pushed1)
    pushed2 = "2"
    stack.Push(pushed2)
    pushed3 = "3"
    stack.Push(pushed3)

    popped = stack.Pop
    expect(popped).to eq(pushed3)
    popped = stack.Pop
    expect(popped).to eq(pushed2)
    popped = stack.Pop
    expect(popped).to eq(pushed1)
  end

  it "Pop a Stack that has no elements." do
    expect{stack.Pop}.to raise_error
  end

end