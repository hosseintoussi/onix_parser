require_relative "sales_outlet"
require_relative "code"

module OnixParser
  module Elements
    class SalesRestriction < Base
      attribute :sales_restriction_type, Code, list: "71"
      attribute :sales_outlet, Types::Collection, of: SalesOutlet
      attribute :sales_restriction_note, Types::Collection, of: Types::String
      attribute :start_date, Types::String
      attribute :end_date, Types::String
    end
  end
end
