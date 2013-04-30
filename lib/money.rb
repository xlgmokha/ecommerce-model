class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def +(other)
    Money.new(@amount + other.amount)
  end

  def -(other)
    Money.new(@amount - other.amount)
  end

  def ==(other)
    @amount == other.amount
  end
end
