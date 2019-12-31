require_relative "sales_outlet"

module OnixParser
  module Elements
    class SalesRestriction < Base
      attribute :sales_restriction_type, Types::String
      attribute :sales_outlet, Types::Collection, of: SalesOutlet
      attribute :sales_restriction_note, Types::Collection, of: Types::String
      attribute :start_date, Types::String
      attribute :end_date, Types::String
    end
  end
end
