require_relative "identifier"
module OnixParser
  module Elements
    class NameIdentifier < Identifier
      attributes_for "name", list: "44"
    end
  end
end
