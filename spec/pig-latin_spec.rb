require_relative "spec_helper.rb"


describe 'PigLatin' do
  describe '.translate' do

    it "returns word with consonants at end with -ay" do
      expect(PigLatin.translate("hello")).to eq("ellohay")
      expect(PigLatin.translate("green")).to eq("eengray")
      expect(PigLatin.translate("three")).to eq("eethray")
    end

    it "returns word beginning with vowel to return ending with -way" do
      expect(PigLatin.translate("egg")).to eq("eggway")
    end

    it "returns word beginning with y with y at end folowed by -ay" do
      expect(PigLatin.translate("yellow")).to eq("ellowyay")
    end

    it "returns a word with y inside word to keep y at the front" do
      expect(PigLatin.translate("plywood")).to eq("ywoodplay")
    end

  end
end
