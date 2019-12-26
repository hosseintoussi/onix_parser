module OnixParser
  module Elements
    class AudienceRange < Base
      attribute :audience_range_qualifier, String
      attribute :audience_range_precision, Types::Collection, of: String
      attribute :audience_range_value, Types::Collection, of: String
    end
  end
end
