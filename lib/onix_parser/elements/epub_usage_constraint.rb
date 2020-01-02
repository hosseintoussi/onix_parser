require_relative "epub_usage_limit"
require_relative "code"

module OnixParser
  module Elements
    class EpubUsageConstraint < Base
      attribute :epub_usage_type, Code, list: "145"
      attribute :epub_usage_status, Code, list: "146"
      attribute :epub_usage_limit, Types::Collection, of: EpubUsageLimit
    end
  end
end
