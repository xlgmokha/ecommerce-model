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

  def total_price
    return Money.new(0.00) if @items.empty?
    @items.first.price
  end
end
