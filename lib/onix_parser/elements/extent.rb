require_relative "code"

module OnixParser
  module Elements
    class Extent < Base
      attribute :extent_type, Code, list: "23"
      attribute :extent_value, Types::String
      attribute :extent_value_roman, Types::String
      attribute :extent_unit, Code, list: "24"
    end
  end
end
