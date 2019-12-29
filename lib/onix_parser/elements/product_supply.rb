require_relative "market"
require_relative "market_publishing_detail"
require_relative "supply_detail"

module OnixParser
  module Elements
    class ProductSupply < Base
      # The <Market> composite is repeatable, but in almost all cases only
      # a single instance is required.
      attribute :market, Market
      attribute :market_publishing_detail, MarketPublishingDetail
      attribute :supply_detail, Types::Collection, of: SupplyDetail
    end
  end
end
