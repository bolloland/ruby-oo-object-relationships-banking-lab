---
  tags: oo, object relations, classes, intermediate
  languages: ruby
  resources: 0
---

# Object Oriented Banking

## Objective

We're going to build a BankAccount class where two instances of the class can transfer money to another class through a Transfer class. The transfer class acts as a space for a transaction between two instances of the bank account class. Think of it this way: you can't just transfer money to another acount without the bank running checks first. Transfer will do all of this, as well as check the validity of the accounts before the transaction occurs. Transaction should be able to reject a transfer if the accounts aren't valid or if the sender doesn't have the money.

## Instructions

Pass the tests. They are deliberatively vague; your design is up to you.

## Bonus/TODO

Add functionality to BankAccount class so that every method/action must require a pin. The pin should be setable, but private and not accessible. Read up on `private` methods which will help with this.