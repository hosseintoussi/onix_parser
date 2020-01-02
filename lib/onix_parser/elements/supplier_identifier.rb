require_relative "identifier"

module OnixParser
  module Elements
    class SupplierIdentifier < Identifier
      attributes_for "supplier", list: "92"
    end
  end
end
