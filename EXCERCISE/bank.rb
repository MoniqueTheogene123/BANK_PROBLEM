# bank.rb

class Bank
  def initialize
    @accounts = {}
    @transaction_history = {}
  end

  def open_account(name, initial_deposit)
    @accounts[name] = initial_deposit
    @transaction_history[name] = [Transaction.new("Initial deposit", initial_deposit)]
  end

  def deposit(name, amount)
    @accounts[name] += amount
    @transaction_history[name] << Transaction.new("Deposit", amount)
  end

  def withdraw(name, amount)
    @accounts[name] -= amount
    @transaction_history[name] << Transaction.new("Withdrawal", amount)
  end

  def close_account(name)
    final_balance = @accounts[name]
    @accounts.delete(name)
    # TODO: move to method
    transaction_history = @transaction_history[name].map(&:to_s).join(", ")
    @transaction_history.delete(name)
  end

  def complete?
    if @accounts.empty? && @transaction_history.empty?
      true
    else
      false
    end
  end
end
