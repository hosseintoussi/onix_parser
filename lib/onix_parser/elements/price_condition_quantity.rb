module OnixParser
  module Elements
    class PriceConditionQuantity < Base
      attribute :price_condition_quantity_type, Types::String
      attribute :quantity, Types::String
      attribute :quantity_unit, Types::String
    end
  end
end
