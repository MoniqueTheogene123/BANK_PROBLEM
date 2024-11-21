# Bank

## Prompt
You are a bank manager. Can you debug and add logging to this banking simulation to match the expected output?

1. Run the `simulation.rb` file and fix the syntax errors.
2. Strategically add puts statements to `bank.rb`:
  - Log the customer's name and initial deposit when an account is opened (e.g., `📖 Opened account for Alice with $1000`)
  - Log the customer's name and amount when a deposit is made (e.g., `💰 Alice deposited $200`)
  - Log the customer's name and amount when a withdrawal is made (e.g., `💸 Alice withdrew $150`)
  - Log the customer's name and remaining balance when an account is closed (e.g., `🔒 Closed account for Alice (Final balance: $1050)`)
  - Log all transactions for a customer when an account is closed (e.g., `📜 Transaction history for Alice [Initial deposit: $1000, Deposit: $200, Withdrawal: $150]`)
  - Log when all transactions are complete (e.g., `✅ All transactions are complete`)

Expected Output:

```bash
📖 Opened account for Alice with $1000
📖 Opened account for Bob with $1500
📖 Opened account for Carol with $2000
💰 Alice deposited $200
💸 Bob withdrew $500
💸 Alice withdrew $150
💸 Carol withdrew $1000
🔒 Closed account for Alice (Final balance: $1050)
📜 Transaction history for Alice [Initial deposit: $1000, Deposit: $200, Withdrawal: $150]
🔒 Closed account for Bob (Final balance: $1000)
📜 Transaction history for Bob [Initial deposit: $1500, Withdrawal: $500]
🔒 Closed account for Carol (Final balance: $1000)
📜 Transaction history for Carol [Initial deposit: $2000, Withdrawal: $1000]
✅ All transactions are complete
```

Remember to ask questions and talk through your thought process. We are here to help. 😄
