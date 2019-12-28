require_relative "sales_outlet"

module OnixParser
  module Elements
    class SalesRestriction < Base
      attribute :sales_restriction_type, String
      attribute :sales_outlet, Types::Collection, of: SalesOutlet
      attribute :sales_restriction_note, Types::Collection, of: String
      attribute :start_date, String
      attribute :end_date, String
    end
  end
end
