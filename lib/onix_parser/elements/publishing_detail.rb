require_relative "imprint"
require_relative "publisher"
require_relative "product_contact"
require_relative "publishing_date"
require_relative "copyright_statement"
require_relative "sales_rights"
require_relative "sales_restriction"

module OnixParser
  module Elements
    class PublishingDetail < Base
      attribute :imprint, Types::Collection, of: Imprint
      attribute :publisher, Types::Collection, of: Publisher
      attribute :city_of_publication, Types::Collection, of: String
      attribute :country_of_publication, String
      attribute :product_contact, Types::Collection, of: ProductContact
      attribute :publishing_status, String
      attribute :publishing_status_note, Types::Collection, of: String
      attribute :publishing_date, Types::Collection, of: PublishingDate
      attribute :latest_reprint_number, String
      attribute :copyright_statement, Types::Collection, of: CopyrightStatement
      attribute :sales_rights, Types::Collection, of: SalesRights
      attribute :row_sales_rights_type, String
      attribute :sales_restriction, Types::Collection, of: SalesRestriction
    end
  end
end
