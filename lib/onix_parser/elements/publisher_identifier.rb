require_relative "identifier"

module OnixParser
  module Elements
    class PublisherIdentifier < Identifier
      attributes_for "publisher", list: "44"
    end
  end
end
