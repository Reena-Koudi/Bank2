## Bank

A practice tech test to learn OO design and TDD skills.


## Specification

#### Requirements

• You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)  
• Deposits, withdrawal.  
• Account statement (date, amount, balance) printing.  
• Data can be kept in memory (it doesn't need to be stored to a database or anything).

## User Stories
```
As a user
So that i can view my account
I wish to interact with it via IRB

As a user
So that I can use the account for my money
I would like to deposit cash in it

As a user
So that I can use the account for my money
I would like to withdraw cash from it

As a user
So that I can monitor my transactions
I would like to view a statement that prints the date, transaction amount and balance

As a user
So that I don't have to deal with PSQL etc
I don't want to use a database

```

## Run

<img width="918" alt="screen shot 2018-04-26 at 11 37 11" src="https://user-images.githubusercontent.com/34460965/39301754-39d82a7a-4948-11e8-838b-716a5a7691bd.png">

## Acceptance Criteria

Given a client makes a deposit of 1000 on 10-01-2012  
And a deposit of 2000 on 13-01-2012  
And a withdrawal of 500 on 14-01-2012  
When she prints her bank statement  
Then she would see
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
