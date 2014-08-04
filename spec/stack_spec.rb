require 'stack'

describe "Stack" do
  let(:stack) { Stack.new }

  it "creates a Stack and verifies that IsEmpty is true." do
    expect(stack.empty?).to be(true)
  end

  it "Pushes a single object on the Stack and verifies that IsEmpty is false" do
    stack.push("first element")
    expect(stack.empty?).to be(false)
  end

  it "Push a single object, Pop the object, and verify that IsEmpty is true." do
    stack.push("first element")
    stack.pop
    expect(stack.empty?).to be(true)
  end

  it "Push a single object, remembering what it is; Pop the object, and verify that the two objects are equal." do
    expected = 1234
    stack.push(expected)
    actual = stack.pop
    expect(actual).to eq(expected)
  end

  it "Push three objects, remembering what they are; Pop each one, and verify that they are correct." do
    pushed1 = "1"
    stack.push(pushed1)
    pushed2 = "2"
    stack.push(pushed2)
    pushed3 = "3"
    stack.push(pushed3)

    popped = stack.pop
    expect(popped).to eq(pushed3)
    popped = stack.pop
    expect(popped).to eq(pushed2)
    popped = stack.pop
    expect(popped).to eq(pushed1)
  end

  it "Pop a Stack that has no elements." do
    expect{stack.pop}.to raise_error
  end

  it "Push a single object and then call Top. Verify that IsEmpty is false." do
    stack.push("42")
    stack.top
    expect(stack.empty?).to be(false)
  end

  it "Push a single object, remembering what it is; and then call Top. Verify that the object that is returned is the same as the one that was pushed." do
    pushed = "42"
    stack.push(pushed)
    topped = stack.top
    expect(topped).to eq(pushed)
  end

  it "Push multiple items onto the Stack and verify that calling Top returns the correct object." do
    pushed3 = "3"
    stack.push(pushed3)
    pushed4 = "4"
    stack.push(pushed4)
    pushed5 = "5"
    stack.push(pushed5)

    topped = stack.top
    expect(topped).to eq(pushed5)
  end

  it "Push an item on the Stack, call Top repeatedly, and verify that the object returned each time is equal to the object that was pushed onto the Stack." do
    pushed = "44"
    stack.push(pushed)
    10.times do
      topped = stack.top
      expect(topped).to eq(pushed)
    end
  end

  it "Call Top on a Stack with no elements." do
    expect{stack.top}.to raise_error
  end

  it "Push null onto the Stack and verify that IsEmpty returns false." do
    stack.push(nil)
    expect(stack.empty?).to be(false)
  end

  it "Push null onto the Stack, Pop the Stack, and verify that the value returned is null." do
    stack.push(nil)
    expect(stack.pop).to be(nil)
    expect(stack.empty?).to be(true)
  end

  it "Push null onto the Stack, call Top, and verify that the value returned is null." do
    stack.push(nil)
    expect(stack.top).to be(nil)
    expect(stack.empty?).to be(false)
  end

end