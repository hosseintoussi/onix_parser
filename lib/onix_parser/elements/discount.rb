module OnixParser
  module Elements
    class Discount < Base
      attribute :discount_type, String
      attribute :quantity, String
      attribute :to_quantity, String
      attribute :discount_percent, String
      attribute :discount_amount, String
    end
  end
end
