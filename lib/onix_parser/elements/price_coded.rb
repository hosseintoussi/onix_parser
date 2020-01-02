require_relative "code"

module OnixParser
  module Elements
    class PriceCoded < Base
      attribute :price_code_type, Code, list: "179"
      attribute :price_code_type_name, Types::String
      attribute :price_code, Types::String
    end
  end
end
