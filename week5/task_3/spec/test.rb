require "../task_3_missing_number.rb"
require "rspec/autorun"

describe ExcludingNumber do 
  context "valid array" do
    let(:missing_one_num_1){[10,2,3,4,5,7,8,1,9]}
    let(:missing_one_num_2){[10,2,3,5,7,8,1,9,6]}
    let(:missing_one_num_3){[10,2,3,4,7,8,1,9,6]}
    it "missing only one number" do 
      expect(ExcludingNumber.new(missing_one_num_1).call).to eq [6]
    end
    it "missing only one number" do 
      expect(ExcludingNumber.new(missing_one_num_2).call).to eq [4]
    end
    it "missing only one number" do 
      expect(ExcludingNumber.new(missing_one_num_3).call).to eq [5]
    end
  end
  context "invalid array" do
    let(:string_array){[10,2,"i",4,5,7,8,1,11]}
    let(:size_is_more_than_9){[10,2,9,4,5,7,8,1,11,3]}
    let(:size_is_less_than_9){[10,2,9,4,5,7,8,1]}
    let(:not_uniq_array){[10,2,2,3,6,9,4,5,7]}
    let(:missing_more_than_one){[10,2,3,4,5,7,8,1,11]}
    let(:error_message){"Array is Invalid"}
    it "string in array" do 
      expect(ExcludingNumber.new(string_array).call).to eq error_message
    end
    it "size is more than 9" do 
      expect(ExcludingNumber.new(size_is_more_than_9).call).to eq error_message
    end
    it "size is less than 9" do 
      expect(ExcludingNumber.new(size_is_less_than_9).call).to eq error_message
    end
    it "is not uniq numbers" do 
      expect(ExcludingNumber.new(not_uniq_array).call).to eq error_message
    end
    it "missing more than one number" do 
      expect(ExcludingNumber.new(missing_more_than_one).call).to eq error_message
    end
  end
end

