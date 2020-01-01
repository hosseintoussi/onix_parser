RSpec.describe OnixParser::Attributes::Types::Collection do
  describe "#coerce" do
    before do
      allow(OnixParser::Attributes::Types)
        .to receive(:coerce)
        .with(OnixParser::Attributes::Types::String, "test")
        .and_return("test")
    end

    context "when the value given is not a collection" do
      it "returns a collection with the value coerced inside" do
        result =
          described_class
          .new.coerce("test", of: OnixParser::Attributes::Types::String)

        expect(result).to eq(["test"])
      end
    end

    context "when the value given is a collection" do
      it "returns a coerced collection" do
        result =
          described_class
          .new.coerce(["test", "test"], of: OnixParser::Attributes::Types::String)

        expect(result).to eq(["test", "test"])
      end
    end
  end
end
