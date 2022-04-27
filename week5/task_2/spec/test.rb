require "../task_2_sum_even_fib.rb"
require "rspec/autorun"

describe SumEvenFibonacci do 
  context "ivalid numbers" do
    let(:negative_num){-10}
    let(:string_el_num){"10"}
    let(:string_el){"i"}
    let(:error_message){"Your number is Invalid"}
    it "Negative nums" do
      expect(SumEvenFibonacci.new(negative_num).call).to eq error_message
    end
    it "Nums as string" do
    expect(SumEvenFibonacci.new(string_el_num).call).to eq error_message
    end
    it "String insted of nums" do
      expect(SumEvenFibonacci.new(string_el).call).to eq error_message
    end
  end
end