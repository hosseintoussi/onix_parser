require_relative "publisher_representative"
require_relative "product_contact"
require_relative "market_date"

module OnixParser
  module Elements
    class MarketPublishingDetail < Base
      attribute :publisher_representative, Types::Collection, of: PublisherRepresentative
      attribute :product_contact, Types::Collection, of: ProductContact
      attribute :market_publishing_status, Types::Collection, of: String
      attribute :market_date, Types::Collection, of: MarketDate
      attribute :promotion_campaign, Types::Collection, of: String
      attribute :promotion_contact, String
      attribute :initial_print_run, Types::Collection, of: String
      attribute :reprint_detail, Types::Collection, of: String
      attribute :copies_sold, Types::Collection, of: String
      attribute :book_club_adoption, Types::Collection, of: String
    end
  end
end
