class Transfer
  attr_accessor :sender, :receiver, :amount
  attr_reader :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if sender.balance || receiver.balance > 0 && sender.status && receiver.status == "open"
      true
    else
      false
    end
  end
end
