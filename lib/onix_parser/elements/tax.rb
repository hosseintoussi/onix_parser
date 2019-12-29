require_relative "product_identifier"

module OnixParser
  module Elements
    class Tax < Base
      attribute :product_identifier, Types::Collection, of: ProductIdentifier
      attribute :price_part_description, Types::Collection, of: String
      attribute :tax_type, String
      attribute :tax_rate_code, String
      attribute :tax_rate_percent, String
      attribute :taxable_amount, String
      attribute :tax_amount, String
    end
  end
end
