require_relative "agent_identifier"
require_relative "website"

module OnixParser
  module Elements
    class PublisherRepresentative < Base
      attribute :agent_role, String
      attribute :agent_identifier, Types::Collection, of: AgentIdentifier
      attribute :telephone_number, Types::Collection, of: String
      attribute :fax_number, Types::Collection, of: String
      attribute :email_address, Types::Collection, of: String
      attribute :website, Types::Collection, of: Website
    end
  end
end
