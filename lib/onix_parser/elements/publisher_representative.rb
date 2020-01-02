require_relative "agent_identifier"
require_relative "website"
require_relative "code"

module OnixParser
  module Elements
    class PublisherRepresentative < Base
      attribute :agent_role, Code, list: "69"
      attribute :agent_identifier, Types::Collection, of: AgentIdentifier
      attribute :agent_name, Types::String
      attribute :telephone_number, Types::Collection, of: Types::String
      attribute :fax_number, Types::Collection, of: Types::String
      attribute :email_address, Types::Collection, of: Types::String
      attribute :website, Types::Collection, of: Website
    end
  end
end
