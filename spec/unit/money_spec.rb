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
end
