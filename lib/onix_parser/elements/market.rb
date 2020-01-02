require_relative "territory"
require_relative "sales_restriction"

module OnixParser
  module Elements
    class Market < Base
      attribute :territory, Territory
      attribute :sales_restriction, Types::Collection, of: SalesRestriction
    end
  end
end
