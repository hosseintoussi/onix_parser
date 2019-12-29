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

module OnixParser
  module Elements
    class Price < Base
      attribute :price_type, String
      attribute :price_identifier, Types::Collection, of: PriceIdentifier
      attribute :price_qualifier, String
      attribute :epub_technical_protection,
        Types::Collection,
        of: String
      attribute :price_constraint, Types::Collection, of: PriceConstraint
      attribute :epub_license, EpubLicense
      attribute :price_type_description, Types::Collection, of: String
      attribute :price_per, EpubLicense
      attribute :price_condition, Types::Collection, of: PriceCondition
      attribute :minimum_order_quantity, String
      attribute :batch_bonus, Types::Collection, of: BatchBonus
      attribute :discount_coded, Types::Collection, of: DiscountCoded
      attribute :discount, Types::Collection, of: Discount
      attribute :price_status, String
      attribute :price_amount, String
      attribute :price_coded, PriceCoded
      attribute :tax, Types::Collection, of: Tax
      attribute :tax_exempt, String
      attribute :unpriced_item_type, String
      attribute :currency_code, String
      attribute :territory, Territory
      attribute :currency_zone, String
      attribute :comparison_product_price,
        Types::Collection,
        of: ComparisonProductPrice
      attribute :price_date, Types::Collection, of: PriceDate
      attribute :printed_on_product, String
      attribute :position_on_product, String
    end
  end
end
