require_relative "identifier"

module OnixParser
  module Elements
    class ProductContactIdentifier < Identifier
      attributes_for "product_contact", list: "44"
    end
  end
end
