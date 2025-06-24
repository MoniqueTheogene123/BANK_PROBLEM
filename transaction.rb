# transaction.rb

class Transaction
  attr_reader :type, :amount

  def initialize(type, amount)
    @type = type
    @amount = amount
  end

  def to_s
    "#{@type}: $#{@amount}"
  end
end
