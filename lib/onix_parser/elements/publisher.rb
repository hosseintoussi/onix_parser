require_relative "website"
require_relative "publisher_identifier"
require_relative "code"

module OnixParser
  module Elements
    class Publisher < Base
      attribute :publishing_role, Code, list: "45"
      attribute :publisher_identifier,
        Types::Collection,
        of: PublisherIdentifier
      attribute :publisher_name, Types::String
      attribute :website, Types::Collection, of: Website
    end
  end
end
