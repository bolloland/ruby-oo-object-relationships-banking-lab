require 'pry'
class Transfer
# pending-complete-rejected-reversed
  attr_accessor :sender, :receiver, :status, :amount, :execute_transaction, :reverse_transfer
  attr_writer
  attr_reader 

 def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
 end

 def valid?  
  (sender.valid? && receiver.valid?) ? true : false
 end

 def execute_transaction
  if (@status != "pending") || !self.valid? || @sender.balance < self.amount 
    @status = "rejected"
    return "Transaction rejected. Please check your account balance."
  else
    @sender.balance -= self.amount
    @receiver.balance += self.amount  
    @status = "complete"
  end
  # !self.valid?
end

def reverse_transfer
  #binding.pry
  if self.status == "complete"
        @sender.balance += self.amount
        @receiver.balance -= self.amount
        @status = "reversed"
      else
        @status = "rejected"
      end
  end
end
