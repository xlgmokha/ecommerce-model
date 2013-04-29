require "spec_helper"

describe Cart do
  let(:sut) { Cart.new }

  let(:crayons) { fake  }
  let(:phone) { fake }
  let(:laptop) { fake }

  context "when there are no items in the cart"  do
    it "should indicate that no items are included" do
      sut.includes?(crayons).should be_false
    end

    it "should indicate that there are no items in the cart" do
      sut.total_items.should == 0
    end

    it "should calculate a total cost of $0.00" do
      sut.total_cost.should == Money.new(0.00)
    end
  end

  context "when there is a single item in the cart" do
    before { sut.add(crayons) }

    it "should increase the quanity of that product" do
      sut.quantity_of(crayons).should == 1
    end

    it "should indicate the total number of unique items in the cart" do
      sut.total_items.should == 1
    end
  end

  context "when there are multiples of a single product" do
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

  context "when there is multiple products" do
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
