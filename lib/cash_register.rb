class CashRegister
  attr_accessor :discount, :total, :title, :last_transaction 
  @@all = [ ]
  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @title = title 
    @items = []
    last_transaction = nil  
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
    @@all << {price => quantity}
  end 

  def apply_discount
    #applies the discount to the total price 
    #returns success message with updated total 
    #reduces the total 
    #self.total -= (self.discount.to_f * self.total)
    self.total -= ((self.discount.to_f/100) * self.total)
    if self.discount > 0 
    "After the discount, the total comes to $#{self.total.to_i}."
    else 
      return "There is no discount to apply."
    end 
   end

   def items 
    @items 
   end 

   def void_last_transaction
     @@all.last.each do | price, quantity|
      @total -= (price * quantity)
     end 
   end 




end
