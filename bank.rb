# bank.rb

class Bank
  def initialize
    @accounts = {}
    @transaction_history = {}
  end

  def open_account(name, initial_deposit)
    @accounts[name] = initial_deposit
    @transaction_history[name] = [Transaction.new("Initial deposit", initial_deposit)]
    puts "📖 Opened account for #{name} with $#{initial_deposit}"
  end

  def deposit(name, amount)
    @accounts[name] += amount
    @transaction_history[name] << Transaction.new("Deposit", amount)
    puts "💰 #{name} deposited $#{amount}"
  end

  def withdraw(name, amount)
    @accounts[name] -= amount
    @transaction_history[name] << Transaction.new("Withdrawal", amount)
    puts "💸 #{name} withdrew $#{amount}"

  end

  def close_account(name)
    final_balance = @accounts[name]
    @accounts.delete(name)
    puts "🔒 Closed account for #{name} (Final balance: $#{final_balance})"
    transaction_history = @transaction_history[name].map(&:to_s).join(", ")
    @transaction_history.delete(name)
    puts "📜 Transaction history for #{name} [Initial deposit: $#{Transaction}, Deposit: $#{deposit}, Withdrawal: $#{withdrawl}]"
  end

  def complete?
    if @accounts.empty? && @transaction_history.empty?
      true
    else
      false
    end
  end
end
