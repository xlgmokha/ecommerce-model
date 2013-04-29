class Customer
  def initialize(cart)
    @cart = cart
  end

  def add_to_cart(product)
    @cart.add(product)
  end
end
