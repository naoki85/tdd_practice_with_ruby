require 'spec_helper.rb'

describe 'Money::Dollar' do
  describe 'multiplication' do
    it do
      five_dollar = Money::Dollar.new(5)
      expect(five_dollar.times(2).equals?(Money::Dollar.new(10))).to be_truthy
      expect(five_dollar.times(3).equals?(Money::Dollar.new(15))).to be_truthy
    end
  end

  describe 'equals?' do
    it do
      expect(Money::Dollar.new(5).equals?(Money::Dollar.new(5))).to be_truthy
      expect(Money::Dollar.new(5).equals?(Money::Dollar.new(6))).to be_falsey
      DummyDollar = Struct.new(:amount)
      expect(Money::Dollar.new(5).equals?(DummyDollar.new(5))).to be_falsey
    end
  end
end
