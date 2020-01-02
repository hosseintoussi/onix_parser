require_relative "publisher_representative"
require_relative "product_contact"
require_relative "market_date"
require_relative "code"

module OnixParser
  module Elements
    class MarketPublishingDetail < Base
      attribute :publisher_representative,
        Types::Collection,
        of: PublisherRepresentative
      attribute :product_contact, Types::Collection, of: ProductContact
      attribute :market_publishing_status, Code, list: "68"
      attribute :market_publishiing_note, Types::Collection, of: Types::String
      attribute :market_date, Types::Collection, of: MarketDate
      attribute :promotion_campaign, Types::Collection, of: Types::String
      attribute :promotion_contact, Types::String
      attribute :initial_print_run, Types::Collection, of: Types::String
      attribute :reprint_detail, Types::Collection, of: Types::String
      attribute :copies_sold, Types::Collection, of: Types::String
      attribute :book_club_adoption, Types::Collection, of: Types::String
    end
  end
end
