class CashRegister
  attr_accessor :register
  attr_writer :discount
  def initialize(register = @total, discount = 0)
    @register = register
    @total = 0
    @discount = discount
  end

  def total
    returns total 
  end

  def cash_register_with_discount
  end

  def checkout(discount = 0)
  end

#  def apply_discount
#    total * 0.8
#  end

end
