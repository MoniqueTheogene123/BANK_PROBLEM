# simulation.rb

require_relative 'bank'
require_relative 'transaction'

my_bank = Bank.new

my_bank.open_account("Alice", 1000)
my_bank.open_account("Bob", 1500)
my_bank.open_account("Carol", 2000)

my_bank.deposit("Alice", 200)
my_bank.withdraw("Bob", 500)
my_bank.withdraw("Alice", 150)
my_bank.withdraw("Carol", 1000)

my_bank.close_account("Alice")

my_bank.complete?
