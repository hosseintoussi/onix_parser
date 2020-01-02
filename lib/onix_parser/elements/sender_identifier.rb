require_relative "identifier"

module OnixParser
  module Elements
    class SenderIdentifier < Identifier
      attributes_for("sender", list: "44")
    end
  end
end
