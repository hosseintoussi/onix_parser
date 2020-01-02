require_relative "identifier"

module OnixParser
  module Elements
    class ImprintIdentifier < Identifier
      attributes_for "imprint", list: "44"
    end
  end
end
