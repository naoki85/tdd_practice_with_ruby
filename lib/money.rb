module Money
  class Money
    attr_reader :amount

    def equals?(money)
      money.kind_of?(Money) && @amount == money.amount &&
        self.class == money.class
    end
  end
end