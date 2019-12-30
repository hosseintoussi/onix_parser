require_relative "identifier"

module OnixParser
  module Elements
    class ProductIdentifier < Identifier
      attributes_for "product"
    end
  end
end
