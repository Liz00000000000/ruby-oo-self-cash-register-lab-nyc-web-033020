class CashRegister
  attr_accessor :register
  def initialize(register = @total)
    @register = register
    @total = 0 
  end
end
