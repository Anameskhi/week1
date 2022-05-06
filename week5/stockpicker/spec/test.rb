# frozen_string_literal: true

require '../stockpicker'
require 'rspec/autorun'

describe StockPicker do
  let(:stocks) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }
  let(:empty_array) { [] }
  let(:invalid_array) { [2, 35, 7, 3, nil, '2', 'sdf'] }

  it 'should return index of array [4,1]' do
    expect(StockPicker.new(stocks).call).to eq([1, 4])
  end

  it 'araay should be empty' do
    expect(StockPicker.new(empty_array).call).to eq([])
  end

  it 'araay should be invalid' do
    expect(StockPicker.new(invalid_array).call).to eq('Invalid Input')
  end
end
