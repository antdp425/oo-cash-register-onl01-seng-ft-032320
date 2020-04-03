
class CashRegister
attr_accessor :total, :discount, :price

  def initialize(discount=0)
    @items = []
    @price = [0]
    @total = @price.sum
    @discount = discount
  end

  def add_item(title,price,quantity=1)
    @total += price * quantity
    @price << price * quantity
    quantity.times {@items << title}
  end

  def apply_discount
    @total = (total) - (total * discount/100)
    if discount != 0
      "After the discount, the total comes to $#{total}."
    else
    "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price[-1]
    @price.pop
  end

end
