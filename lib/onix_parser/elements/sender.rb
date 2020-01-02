require_relative "sender_identifier"

module OnixParser
  module Elements
    class Sender < Base
      attribute :sender_name, Types::String
      attribute :sender_identifier, Types::Collection, of: SenderIdentifier
      attribute :contact_name, Types::String
      attribute :email_address, Types::String
    end
  end
end
