class Cart
  def initialize(items = [])
    @items = items
  end

  def add(product)
    @items.push(product)
  end

  def includes?(product)
    @items.include?(product)
  end

  def quantity_of(product)
    @items.find_all do |item|
      item == product
    end.count
  end

  def total_items
    @items.count
  end

  def total_cost
    Money.new(0.00)
  end
end
