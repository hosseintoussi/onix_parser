RSpec.describe OnixParser::Attributes::Types::String do
  describe "#coerce" do
    context "when the value given is nil" do
      it "returns an empty string" do
        expect(described_class.new.coerce(nil)).to eq("")
      end
    end

    context "when the value given is a array" do
      it "joins the array and returns the string" do
        expect(described_class.new.coerce([1,2,3])).to eq("123")
      end
    end

    context "when value responds to to_s" do
      it "returns a string" do
        expect(described_class.new.coerce(:test)).to eq("test")
      end
    end
  end
end
