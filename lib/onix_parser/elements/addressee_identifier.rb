require_relative "identifier"

module OnixParser
  module Elements
    class AddresseeIdentifier < Identifier
      attributes_for "addressee", list: "44"
    end
  end
end

