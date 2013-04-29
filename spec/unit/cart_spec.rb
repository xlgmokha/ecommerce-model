require "spec_helper"

describe Cart do
  let(:sut) { Cart.new }

  let(:crayons) { fake  }
  let(:phone) { fake }
  let(:laptop) { fake }

  context "when there are no items in the cart"  do
    let(:result) { sut.includes?(crayons) }

    it "should return false" do
      result.should be_false
    end
  end

  context "when adding a product" do
    before { sut.add(crayons) }

    it "should increase the quanity of that product" do
      sut.quantity_of(crayons).should == 1
    end

    it "should indicate the total number of unique items in the cart" do
      sut.total_items.should == 1
    end
  end

  context "when adding more then one of the same product" do
    before :each do
      sut.add(crayons)
      sut.add(crayons)
    end

    it "should indicate the total quanity of that product" do
      sut.quantity_of(crayons).should == 2
    end

    it "should indicate the total number of items in the cart" do
      sut.total_items.should == 2
    end
  end

  context "when adding different products" do
    before :each do
      sut.add(crayons)
      sut.add(phone)
      sut.add(laptop)
    end

    it "should indicate the total number of items in the cart" do
      sut.total_items.should == 3
    end
  end

end
