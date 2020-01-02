require_relative "addressee_identifier"

module OnixParser
  module Elements
    class Addressee < Base
      attribute :addressee_name, Types::String
      attribute :addressee_identifier,
        Types::Collection,
        of: AddresseeIdentifier
      attribute :contact_name, Types::String
      attribute :email_address, Types::String
    end
  end
end

