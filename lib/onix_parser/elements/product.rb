module OnixParser
  module Elements
    class Product < Base
      attribute :record_reference, String
      attribute :notification_type, String
      attribute :deletion_text, String
      attribute :record_source_type, String
      attribute :record_source_name, String
      attribute :record_source_identifier,
        Types::Collection,
        of:  RecordSourceIdentifier
      attribute :product_identifier, Types::Collection, of: ProductIdentifier
      attribute :barcode, Types::Collection, of: Barcode
      attribute :descriptive_detail, DescriptiveDetail

      def notification_type
        "bloosh #{attributes[:notification_type]}"
      end
    end
  end
end
