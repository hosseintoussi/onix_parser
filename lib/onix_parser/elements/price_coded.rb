module OnixParser
  module Elements
    class PriceCoded < Base
      attribute :price_code_type, String
      attribute :price_code_type_name, String
      attribute :price_code, String
    end
  end
end
