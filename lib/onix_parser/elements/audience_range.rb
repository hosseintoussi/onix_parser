require_relative "code"

module OnixParser
  module Elements
    class AudienceRange < Base
      attribute :audience_range_qualifier, Code, list: "30"
      attribute :audience_range_precision,
        Types::Collection,
        of: Code, list: "31"
      attribute :audience_range_value, Types::Collection, of: Code, list: "77"
    end
  end
end
