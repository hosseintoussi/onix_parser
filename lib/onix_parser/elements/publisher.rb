require_relative "publisher_identifier"
require_relative "website"

module OnixParser
  module Elements
    class Publisher < Base
      attribute :publishing_role, String
      attribute :publisher_identifier, Types::Collection, of: PublisherIdentifier
      attribute :publisher_name, String
      attribute :website, Types::Collection, of: Website
    end
  end
end