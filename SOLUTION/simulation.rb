# simulation.rb

require_relative 'bank'
require_relative 'transaction'

bank = Bank.new

bank.open_account("Alice", 1000)
bank.open_account("Bob", 1500)
bank.open_account("Carol", 2000)

bank.deposit("Alice", 200)
bank.withdraw("Bob", 500)
bank.withdraw("Alice", 150)
bank.withdraw("Carol", 1000)

bank.close_accounts

bank.complete?
