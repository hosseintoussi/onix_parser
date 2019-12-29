require_relative "price_condition_quantity"
require_relative "product_identifier"

module OnixParser
  module Elements
    class PriceCondition < Base
      attribute :price_condition_type, String
      attribute :price_condition_quantity,
        Types::Collection,
        of: PriceConditionQuantity
      attribute :product_identifier,
        Types::Collection,
        of: ProductIdentifier
    end
  end
end
