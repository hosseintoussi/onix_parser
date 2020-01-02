require_relative "code"

module OnixParser
  module Elements
    class EpubUsageLimit < Base
      attribute :quantity, Types::String
      attribute :epub_usage_unit, Code, list: "147"
    end
  end
end
