require_relative "product_identifier"

module OnixParser
  module Elements
    class ComparisonProductPrice < Base
      attribute :product_identifier, Types::Collection, of: ProductIdentifier
      attribute :price_type, String
      attribute :price_amount, String
      attribute :currency_code, String
    end
  end
end
