require 'spec_helper.rb'

describe 'Money::Franc' do
  describe 'multiplication' do
    it do
      five = Money::Franc.new(5)
      expect(five.times(2).equals?(Money::Franc.new(10))).to be_truthy
      expect(five.times(3).equals?(Money::Franc.new(15))).to be_truthy
    end
  end

  describe 'equals?' do
    it do
      expect(Money::Franc.new(5).equals?(Money::Franc.new(5))).to be_truthy
      expect(Money::Franc.new(5).equals?(Money::Franc.new(6))).to be_falsey
      DummyFranc = Struct.new(:amount)
      expect(Money::Franc.new(5).equals?(DummyFranc.new(5))).to be_falsey
    end
  end
end
