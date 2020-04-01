class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [ ]
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.items do
      items << item
    end
  end

 def void_last_transaction
   self.total = self.total - self.last_transaction
 end 


end
