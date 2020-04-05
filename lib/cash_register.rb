class CashRegister
  attr_accessor :discount, :total, :title
  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @title = title 
    @items = []
  end
  def self.all
    @@all
  end 

  def total
     @total 
  end

  def add_item(title, price, quantity = 1)
    quantity.times do (@items << title) end 
    @total += (price * quantity) 
  end 

  def apply_discount
    #applies the discount to the total price 
    #returns success message with updated total 
    #reduces the total 
    self.total -= (self.discount * self.total)
    if self.discount != 0 
    "After the discount, the total comes to #{self.total}"
    else 
      return "There is no discount to apply."
    end 
   end

   def items 
    @items 
   end 

   def void_last_transaction 

   end 

end
