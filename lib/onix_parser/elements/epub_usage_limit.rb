module OnixParser
  module Elements
    class EpubUsageLimit < Base
      attribute :quantity, String
      attribute :epub_usage_unit, String
      attribute :extent_unit, String
    end
  end
end
