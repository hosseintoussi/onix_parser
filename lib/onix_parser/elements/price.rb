require_relative "price_identifier"
require_relative "price_constraint"
require_relative "epub_license"
require_relative "price_condition"
require_relative "batch_bonus"
require_relative "discount_coded"
require_relative "discount"
require_relative "price_coded"
require_relative "tax"
require_relative "territory"
require_relative "comparison_product_price"
require_relative "price_date"
require_relative "code"

module OnixParser
  module Elements
    class Price < Base
      attribute :price_type, Code, list: "58"
      attribute :price_identifier, Types::Collection, of: PriceIdentifier
      attribute :price_qualifier, Code, list: "59"
      attribute :epub_technical_protection,
        Types::Collection,
        of: Types::String,
        list: "144"
      attribute :price_constraint, Types::Collection, of: PriceConstraint
      attribute :epub_license, EpubLicense
      attribute :price_type_description, Types::Collection, of: Types::String
      attribute :price_per, Code, list: "60"
      attribute :price_condition, Types::Collection, of: PriceCondition
      attribute :minimum_order_quantity, Types::String
      attribute :batch_bonus, Types::Collection, of: BatchBonus
      attribute :discount_coded, Types::Collection, of: DiscountCoded
      attribute :discount, Types::Collection, of: Discount
      attribute :price_status, Code, list: "61"
      attribute :price_amount, Types::String
      attribute :price_coded, PriceCoded
      attribute :tax, Types::Collection, of: Tax
      attribute :tax_exempt, Types::String
      attribute :unpriced_item_type, Code, list: "57"
      attribute :currency_code, Code, list: "96"
      attribute :territory, Territory
      attribute :currency_zone, Code, list: "172"
      attribute :comparison_product_price,
        Types::Collection,
        of: ComparisonProductPrice
      attribute :price_date, Types::Collection, of: PriceDate
      attribute :printed_on_product, Code, list: "174"
      attribute :position_on_product, Code, list: "142"
    end
  end
end
