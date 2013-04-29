class Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def +(other)
    plus(other)
  end

  def plus(other)
    Money.new(@amount + other.amount)
  end

  def ==(other)
    @amount == other.amount
  end
end
