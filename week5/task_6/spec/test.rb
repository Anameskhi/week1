require '../task_4_caesar_cipher'
require 'rspec/autorun'

describe CaesarCipher do
  context "validate parameters" do
    let(:valid_word_1){"beautiful"}
    let(:valid_word_2){"BEAutiful"}
    let(:valid_word_3){"beau/.-1tiful"}
    let(:valid_word_4){"beau tiful"}
    let(:input_number_2){32}
    let(:input_number_1){8}
    it "validate low case" do
      expect(CaesarCipher.new(valid_word_1, input_number_1).call).to eq "jmicbqnct"
    end
    it "validate both case" do
      expect(CaesarCipher.new(valid_word_2, input_number_1).call).to eq "JMIcbqnct"
    end
    it "include punctuation" do
      expect(CaesarCipher.new(valid_word_3, input_number_1).call).to eq "jmic/.-1bqnct"
    end
    it "include spaces" do
      expect(CaesarCipher.new(valid_word_4, input_number_1).call).to eq "jmic bqnct"
    end
    it "number greater than 26" do
      expect(CaesarCipher.new(valid_word_1, input_number_2).call).to eq "hkgazolar"
    end
  end

  context "invalid Input" do
    let(:valid_word){"ah7/sj"}
    let(:input_string){"i"}
    let(:invalid_word){123}
    let(:input_number){5}

    it "invalid input number" do 
      expect(CaesarCipher.new(valid_word, input_string).call).to eq "Shift namber is Invalid"
    end
    it " input word isn't string" do
      expect(CaesarCipher.new(invalid_word, input_number).call).to eq "Shift namber is Invalid"
    end
  end
end