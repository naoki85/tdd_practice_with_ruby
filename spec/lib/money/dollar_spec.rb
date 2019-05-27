require 'spec_helper.rb'

describe 'Money::Dollar' do
  describe 'multiplication' do
    it do
      five_dollar = Money::Dollar.new(5)
      five_dollar.times(2)
      expect(five_dollar.amount).to eq 10
    end
  end
end
