require_relative "identifier"

module OnixParser
  module Elements
    class CollectionIdentifier < Identifier
      attributes_for "collection", list: "13"
    end
  end
end
