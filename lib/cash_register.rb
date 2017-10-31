class CashRegister
  attr_accessor :total, :discount

  @@all = []

  def initialize(discount = {})
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @item = item
    @quantity = quantity
    @price = price

    subtotal = price * quantity
    @total += subtotal

  end

  def apply_discount()
    if discount != {}
      @total = (@total * (1-(discount * 0.01))).round
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    if @quantity > 1
      @quantity.times do
        @@all << @item
      end
    else
      @@all << item
    end
    @@all

  end

  def void_last_transaction

  end

end
