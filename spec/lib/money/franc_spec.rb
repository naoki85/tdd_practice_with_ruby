require 'spec_helper.rb'

describe 'Money::Franc' do
  describe 'multiplication' do
    it do
      five = Money::Franc.new(5)
      expect(five.times(2).equals?(Money::Franc.new(10))).to be_truthy
      expect(five.times(3).equals?(Money::Franc.new(15))).to be_truthy
    end
  end
end
