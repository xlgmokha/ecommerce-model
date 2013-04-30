require "spec_helper"

describe Money do
  context "when comparing money" do
    context "when the amount is the same" do
      it "should return true" do
        Money.new(1.00).should == Money.new(1.00)
        Money.new(10.00).should eq(Money.new(10.00))
      end
    end
    context "when the amount is different" do
      it "should return false" do
        Money.new(1.00).should_not == Money.new(10.00)
        Money.new(10.00).should_not eq(Money.new(1.00))
      end
    end
  end
  context "when adding money" do
    it "should return the new amount" do
      result = Money.new(1.99) + Money.new(0.01)
      result.should == Money.new(2.00)
    end
  end
  context "when subtracting money" do
    it "should return the correct amount" do
      (Money.new(1.99) - Money.new(0.99)).should == Money.new(1.00)
    end
  end
end
