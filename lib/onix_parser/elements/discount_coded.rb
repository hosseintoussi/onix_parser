require_relative "code"

module OnixParser
  module Elements
    class DiscountCoded < Base
      attribute :discount_code_type, Code, list: "100"
      attribute :discount_code_type_name, Types::String
      attribute :discount_code, Types::String
    end
  end
end
