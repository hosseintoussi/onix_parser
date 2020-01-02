require_relative "code"

module OnixParser
  module Elements
    class PriceConditionQuantity < Base
      attribute :price_condition_quantity_type, Code, list: "168"
      attribute :quantity, Types::String
      attribute :quantity_unit, Code, list: "169"
    end
  end
end
