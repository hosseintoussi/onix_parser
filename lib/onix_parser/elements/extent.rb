module OnixParser
  module Elements
    class Extent < Base
      attribute :extent_type, String
      attribute :extent_value, String
      attribute :extent_value_roman, String
      attribute :extent_unit, String
    end
  end
end
