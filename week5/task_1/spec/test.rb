require "../task_1_repdigit_num"
require "rspec/autorun"

describe RepdigitNum do
  context "is repdigit number" do
    let(:repdigit_num_1){11111}
    let(:repdigit_num_2){22222}
    let(:repdigit_num_3){333333}
    it "repdigit num" do
      expect(RepdigitNum.new(repdigit_num_1).call).to eq ("Your number -> #{repdigit_num_1} <- is Repdigit number ")
    end
    it "repdigit num" do
      expect(RepdigitNum.new(repdigit_num_2).call).to eq ("Your number -> #{repdigit_num_2} <- is Repdigit number ")
    end
    it "repdigit num" do
      expect(RepdigitNum.new(repdigit_num_3).call).to eq ("Your number -> #{repdigit_num_3} <- is Repdigit number ")
    end
  end
  context "array isn't repdigit nummber" do
    let(:non_repdigit_number){12345}
    let(:float_number){0.51111}
    let(:error_message){'Input is Invalid,Try again'}
    it "different number" do
      expect(RepdigitNum.new(non_repdigit_number).call).to eq("Your number -> #{non_repdigit_number} <- isn't Repdigit number ")
    end
    it "float number" do
      expect(RepdigitNum.new(float_number).call).to eq error_message
    end
  end
  context "checkvalidate" do
    let(:valid_array){"1234i5"}
    let(:error_message){'Input is Invalid,Try again'}
    it "string is invalid" do
      expect(RepdigitNum.new(valid_array).call).to eq error_message
    end
    let(:valid_array){-123475}
    let(:error_message){'Input is Invalid,Try again'}
    it "string is invalid" do
      expect(RepdigitNum.new(valid_array).call).to eq error_message
    end
  end
end


