class Transfer
  attr_accessor :sender, :receiver, :amount
  attr_reader :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def status
    @status
  end

  def valid?
    if sender.valid? && receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    sender.balance -= @amount
    receiver.balance += @amount
    status = "complete"
  end
end
