require "spec_helper"

describe Customer do
  let(:cart) { fake }
  let(:sut) { Customer.new(cart) }

  context "when adding an item to the cart" do
    let(:product) { fake }

    before :each do
      sut.add_to_cart(product)
    end

    it "should add it to the cart" do
      cart.should have_received(:add, product)
    end
  end
end
