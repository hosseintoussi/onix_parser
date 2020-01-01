RSpec.describe OnixParser::Utils::Normalizer do
  describe "#call" do
    context "when the hash keys are present in tags" do
      it "normalizes the hash and snake cases the key" do
        hash = { ONIXMessage: { product: { NotificationType: {} } } }

        expect(described_class.call(hash))
          .to eq({ onix_message: { product: { notification_type: {} } } })
      end
    end

    context "when the hash keys are not present in tags" do
      it "only snake cases the keys when possible" do
        hash = { stuff: { testTest: { x999: {} } } }

        expect(described_class.call(hash))
          .to eq({ stuff: { test_test: { x999: {} } } })
      end
    end
  end
end
