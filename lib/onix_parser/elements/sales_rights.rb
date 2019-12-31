require_relative "territory"
require_relative "sales_restriction"
require_relative "product_identifier"

module OnixParser
  module Elements
    class SalesRights < Base
      attribute :sales_rights_type, Types::String
      attribute :territory, Territory
      attribute :sales_restriction, Types::Collection, of: SalesRestriction
      attribute :product_identifier, Types::Collection, of: ProductIdentifier
      attribute :publisher_name, Types::String
    end
  end
end
