module Money
  class Franc
    attr_reader :amount
    
    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      Franc.new(@amount * multiplier)
    end

    def equals?(franc)
      franc.kind_of?(Franc) && @amount == franc.amount
    end
  end
end
