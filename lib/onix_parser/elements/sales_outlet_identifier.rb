require_relative "identifier"

module OnixParser
  module Elements
    class SalesOutletIdentifier < Identifier
      attributes_for "sales_outlet", list: "102"
    end
  end
end
