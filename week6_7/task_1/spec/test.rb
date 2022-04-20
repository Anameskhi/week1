require '../task_1_bubble_sort'
require 'rspec/autorun'

describe BubbleSort do
  context 'correct array' do
    let(:input_array_1) { [2, 2, 3, 10, 24, 5, 2] }
    let(:input_array_2) { [23, 2, 32, 1, 4, 54, 2] }
    let(:input_array_3) { [5] }
    let(:input_array_4) { [] }

    it 'same numbers in array' do
      expect(BubbleSort.new(input_array_1).call).to eq [2, 2, 2, 3, 5, 10, 24]
    end
    it 'check array ' do
      expect(BubbleSort.new(input_array_2).call).to eq [1, 2, 2, 4, 23, 32, 54]
    end
    it 'array with only one number' do
      expect(BubbleSort.new(input_array_3).call).to eq [5]
    end
    it 'empty array' do
      expect(BubbleSort.new(input_array_4).call).to eq []
    end
  end

  context 'invalid array' do
    let(:invalid_array) { ['i', 2, 10, 4, 5, 20] }

    it 'string in array' do
      expect(BubbleSort.new(invalid_array).call).to eq 'Invalid Input'
    end
  end
end


