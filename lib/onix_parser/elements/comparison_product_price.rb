require_relative "product_identifier"
require_relative "code"

module OnixParser
  module Elements
    class ComparisonProductPrice < Base
      attribute :product_identifier, Types::Collection, of: ProductIdentifier
      attribute :price_type, Code, list: "58"
      attribute :price_amount, Types::String
      attribute :currency_code, Types::String
    end
  end
end
