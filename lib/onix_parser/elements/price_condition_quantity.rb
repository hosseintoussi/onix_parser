module OnixParser
  module Elements
    class PriceConditionQuantity < Base
      attribute :price_condition_quantity_type, String
      attribute :quantity, String
      attribute :quantity_unit, String
    end
  end
end
