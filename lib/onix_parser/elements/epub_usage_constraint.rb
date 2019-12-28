require_relative "epub_usage_limit"

module OnixParser
  module Elements
    class EpubUsageConstraint < Base
      attribute :epub_usage_type, String
      attribute :epub_usage_status, String
      attribute :epub_usage_limit, Types::Collection, of: EpubUsageLimit
    end
  end
end
