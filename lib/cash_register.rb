# class CashRegister
#     def initialize(employee_discount)
#         @total = 0
#     end

#     def total
#         self.total
#     end

#     def add_item

#     end

#     def apply_discount

#     end

#     def items
#     end

#     def void_last_transaction

#     end
# end


class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount = nil)
      @total = 0
      @discount = discount
      @items = []
    end

    def add_item(title, price, quantity = 1)
      quantity.times { @items << title }
      @total += price * quantity
    end

    def apply_discount
        if @discount
          @total -= @total * (@discount.to_f / 100)
          "After the discount, the total comes to $#{@total.to_i}"
        else
          "There is no discount to apply."
        end
      end

      def void_last_transaction
        last_item_price = @total - @items.pop_price
        @total -= last_item_price
      end
end

