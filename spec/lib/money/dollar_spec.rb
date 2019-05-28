require 'spec_helper.rb'

describe 'Money::Dollar' do
  describe 'multiplication' do
    it do
      five_dollar = Money::Dollar.new(5)
      product = five_dollar.times(2)
      expect(product.amount).to eq 10
      product = five_dollar.times(3)
      expect(product.amount).to eq 15
    end
  end
end
