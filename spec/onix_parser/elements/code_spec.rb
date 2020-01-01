RSpec.describe OnixParser::Elements::Code do
  describe "#coerce" do
    context "when list number exists" do
      it "sets the attributes" do
        coerced_code = described_class.new.coerce("01", list: "1")

        expect(coerced_code.list).to eq("1")
        expect(coerced_code.value).to eq("01")
      end

      it "returns the value of the list key on humanize" do
        coerced_code = described_class.new.coerce("01", list: "1")

        expect(coerced_code.humanize).not_to be_nil
      end
    end

    context "when list number doesn't exist" do
      it "sets the attributes" do
        coerced_code = described_class.new.coerce("01", list: "6666")

        expect(coerced_code.list).to eq("6666")
        expect(coerced_code.value).to eq("01")
      end

      it "returns nil on humanize" do
        coerced_code = described_class.new.coerce("01", list: "6666")

        expect(coerced_code.humanize).to be_nil
      end
    end
  end
end
