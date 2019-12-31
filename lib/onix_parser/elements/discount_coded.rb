module OnixParser
  module Elements
    class DiscountCoded < Base
      attribute :discount_code_type, Types::String
      attribute :discount_code_type_name, Types::String
      attribute :discount_code, Types::String
    end
  end
end
