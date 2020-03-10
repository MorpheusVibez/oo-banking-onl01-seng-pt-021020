class Transfer
  attr_accessor :sender

  def initialize(sender, name_2, amount)
    @sender = sender
    @name_2 = name_2
    @amount = amount
  end
end
