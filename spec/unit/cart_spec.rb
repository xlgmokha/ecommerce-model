require "spec_helper"

describe Cart do
  let(:sut) { Cart.new }

  context "when there are no items in the cart"  do
    let(:product) { fake }
    let(:result) { sut.includes?(product) }

    it "should return false" do
      result.should be_false
    end
  end

  context "when adding a product" do
    let(:product) { fake }

    let(:result) do
      sut.add(product)
      sut.quantity_of(product)
    end

    it "should increase the quanity of that product" do
      result.should == 1
    end
  end

  context "when adding more then one of the same product" do
    let(:product) { fake }

    let(:result) do
      sut.add(product)
      sut.add(product)
      sut.quantity_of(product)
    end
    it "should indicate the total quanity of that product" do
      result.should == 2
    end
  end
end
