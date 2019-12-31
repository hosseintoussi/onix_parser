module OnixParser
  module Elements
    class EpubUsageLimit < Base
      attribute :quantity, Types::String
      attribute :epub_usage_unit, Types::String
      attribute :extent_unit, Types::String
    end
  end
end
