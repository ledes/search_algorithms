require 'spec_helper'

describe Search do
  let(:names) { ["Christina", "D-Rod", "DT", "Elise", "Jarlax", "MLG", "Richard" ] }

  describe "#linear" do
    it "should return true if name is in array" do
      expect(Search.linear(names, "Elise")).to eq(true)
    end

    it "should return false if name is not in array" do
      expect(Search.linear(names, "Master Chief")).to eq(false)
    end
  end

  describe "#binary" do
    it "should return true if name is in array" do
      expect(Search.binary(names, "Elise")).to eq(true)
    end

    it "should return false if name is not in array" do
      expect(Search.binary(names, "Master Chief")).to eq(false)
    end
  end

  describe "#binary_recursive" do
    it "should return true if name is in array" do
      expect(Search.binary_recursive(names, "Elise")).to eq(true)
    end

    it "should return false if name is in not in array" do
      expect(Search.binary_recursive(names, "Master Chief")).to eq(false)
    end
  end
end
