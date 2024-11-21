# simulation.rb

require_relative 'bank'
require_relative 'transaction'

my_bank = bank.new

open_account("Alice", 1000)

deposit("Alice", 200)
withdraw("Bob", 500)

close_account("Alice")

complete?
