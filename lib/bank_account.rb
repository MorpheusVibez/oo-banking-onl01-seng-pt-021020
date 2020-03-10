class BankAccount
  attr_accessor :status
  attr_reader :name, :balance

  def initialize(name)
    @name = name
    @balance = 1000
  end

end
