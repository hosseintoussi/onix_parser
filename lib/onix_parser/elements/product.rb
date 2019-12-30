require_relative "product_identifier"
require_relative "record_source_identifier"
require_relative "barcode"
require_relative "descriptive_detail"
require_relative "publishing_detail"
require_relative "product_supply"
require_relative "code"

module OnixParser
  module Elements
    class Product < Base
      attribute :record_reference, String
      attribute :notification_type, Code, list: "1"
      attribute :deletion_text, String
      attribute :record_source_type, String
      attribute :record_source_name, String
      attribute :record_source_identifier,
        Types::Collection,
        of: RecordSourceIdentifier
      attribute :product_identifier,
        Types::Collection,
        of: ProductIdentifier
      attribute :barcode, Types::Collection, of: Barcode
      attribute :descriptive_detail, DescriptiveDetail
      attribute :publishing_detail, PublishingDetail
      attribute :product_supply, Types::Collection, of: ProductSupply
    end
  end
end
