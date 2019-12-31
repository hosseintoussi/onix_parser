module OnixParser
  module Elements
    class Extent < Base
      attribute :extent_type, Types::String
      attribute :extent_value, Types::String
      attribute :extent_value_roman, Types::String
      attribute :extent_unit, Types::String
    end
  end
end
