module OnixParser
  module Elements
    class AudienceRange < Base
      attribute :audience_range_qualifier, Types::String
      attribute :audience_range_precision, Types::Collection, of: Types::String
      attribute :audience_range_value, Types::Collection, of: Types::String
    end
  end
end
