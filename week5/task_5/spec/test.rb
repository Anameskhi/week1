
require '../task_5_sub_string'
require 'rspec/autorun'

describe SubStrings do
  context 'sub strings' do
    let(:string_1) { 'down' }
    let(:string_2) { 'go going horn' }
    let(:string_3) { 'how howdy' }
    let(:dictionary) { %w[down go going horn how howdy it] }
    let(:answer_1) { { 'down' => 1 } }
    let(:answer_2) { { 'go' => 1, 'going' => 1, 'horn' => 1 } }
    let(:answer_3) { { 'how' => 1, 'howdy' => 1 } }

    it 'sub strings' do
      expect(SubStrings.new(string_1, dictionary).call).to eq answer_1
    end
    it 'sub strings' do
      expect(SubStrings.new(string_2, dictionary).call).to eq answer_2
    end
    it 'sub strings' do
      expect(SubStrings.new(string_3, dictionary).call).to eq answer_3
    end
  end
  context 'invlaid arguments' do
    let(:valid_string) { 'go' }
    let(:not_string) { 123 }
    let(:not_include) { '123' }
    let(:dictionary) { %w[down go going horn how howdy it] }
    let(:invalid_array) { [1, 'go', 'going', 'horn', 'how', 'howdy', 'it'] }

    it 'not string argument' do
      expect(SubStrings.new(not_string, dictionary).call).to eq 'Invalid Elements'
    end
    it 'if string is not include in dictionary ' do
      expect(SubStrings.new(not_include, dictionary).call).to eq({})
    end
    it 'if array include number ' do
      expect(SubStrings.new(valid_string, invalid_array).call).to eq 'Invalid Elements'
    end
  end
end


