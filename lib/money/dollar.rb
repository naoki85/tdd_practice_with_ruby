module Money
  class Dollar < Money
    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      Dollar.new(@amount * multiplier)
    end

    def equals?(dollar)
      dollar.kind_of?(Dollar) && @amount == dollar.amount
    end
  end
end
