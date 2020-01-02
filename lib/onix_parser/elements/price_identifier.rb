require_relative "identifier"
module OnixParser
  module Elements
    class PriceIdentifier < Identifier
      attributes_for "price", list: "217"
    end
  end
end
