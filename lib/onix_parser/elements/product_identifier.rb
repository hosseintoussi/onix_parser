require_relative "identifier"

module OnixParser
  module Elements
    class ProductIdentifier < Identifier
      attributes_for "product", list: "5"
    end
  end
end
