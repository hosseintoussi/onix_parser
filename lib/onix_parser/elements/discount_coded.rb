module OnixParser
  module Elements
    class DiscountCoded < Base
      attribute :discount_code_type, String
      attribute :discount_code_type_name, String
      attribute :discount_code, String
    end
  end
end
