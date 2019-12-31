require_relative "product_identifier"

module OnixParser
  module Elements
    class Tax < Base
      attribute :product_identifier, Types::Collection, of: ProductIdentifier
      attribute :price_part_description, Types::Collection, of: Types::String
      attribute :tax_type, Types::String
      attribute :tax_rate_code, Types::String
      attribute :tax_rate_percent, Types::String
      attribute :taxable_amount, Types::String
      attribute :tax_amount, Types::String
    end
  end
end
