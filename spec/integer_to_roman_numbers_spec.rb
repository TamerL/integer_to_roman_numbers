require 'rspec/autorun'
require './src/integer_to_roman_numbers'

describe 'integer_to_roman_numbers' do
  context "when the input is a valid number" do
    it "returns I for 1" do
      result = get_roman_num(1)
      expect(result).to eq("I")
    end
    it "returns VI for 4" do
      result = get_roman_num(4)
      expect(result).to eq("IV")
    end
    it "returns V for 5" do
      result = get_roman_num(5)
      expect(result).to eq("V")
    end
    it "returns XI for 9" do
      result = get_roman_num(9)
      expect(result).to eq("IX")
    end
    it "returns X for 10" do
      result = get_roman_num(10)
      expect(result).to eq("X")
    end
    it "returns L for 50" do
      result = get_roman_num(50)
      expect(result).to eq("L")
    end
    it "returns XC for 90" do
      result = get_roman_num(90)
      expect(result).to eq("XC")
    end
    it "returns C for 100" do
      result = get_roman_num(100)
      expect(result).to eq("C")
    end
    it "returns CDXC for 490" do
      result = get_roman_num(490)
      expect(result).to eq("CDXC")
    end
    it "returns D for 500" do
      result = get_roman_num(500)
      expect(result).to eq("D")
    end
    it "returns CM for 900" do
      result = get_roman_num(900)
      expect(result).to eq("CM")
    end
    it "returns M for 1000" do
      result = get_roman_num(1000)
      expect(result).to eq("M")
    end
    it "returns VIII for 8" do
      result = get_roman_num(8)
      expect(result).to eq("VIII")
    end
    it "returns XVIII for 18" do
      result = get_roman_num(18)
      expect(result).to eq("XVIII")
    end
    it "returns LXVIII for 68" do
      result = get_roman_num(68)
      expect(result).to eq("LXVIII")
    end
    it "returns CLXVIII for 168" do
      result = get_roman_num(168)
      expect(result).to eq("CLXVIII")
    end
    it "returns DCLXVIII for 668" do
      result = get_roman_num(668)
      expect(result).to eq("DCLXVIII")
    end
    it "returns a string containing roman characters only, they may be repeated but still in the order as M D C L X V I" do
      result = get_roman_num(1668)
      expect(result).to eq("MDCLXVIII")
    end
  end

  context "when the input is 0" do
    it "returns a message" do
      result = get_roman_num(0)
      expect(result).to eq("please type a number starting from 1")
    end
  end

  context "when the input is a negative number" do
    it "returns a message" do
      result = get_roman_num(-9)
      expect(result).to eq("please type a number starting from 1")
    end
  end

  context "when the input is nil" do
    it "returns a message" do
      result = get_roman_num(nil)
      expect(result).to eq("please type a number starting from 1")
    end
  end

  context "when the input is a fraction" do
    it "returns a message" do
      result = get_roman_num(5.555)
      expect(result).to eq("please type a number starting from 1")
    end
  end
end
