require_relative "sales_outlet_identifier"

module OnixParser
  module Elements
    class SalesOutlet < Base
      attribute :sales_outlet_name, Types::String
      attribute :sales_outlet_identifier,
        Types::Collection,
        of: SalesOutletIdentifier
    end
  end
end
