module Money
  class Money
    attr_reader :amount

    def equals?(money)
      money.kind_of?(Money) && @amount == money.amount
    end
  end
end