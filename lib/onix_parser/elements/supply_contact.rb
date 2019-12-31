require_relative "supply_contact_identifier"

module OnixParser
  module Elements
    class SupplyContact < Base
      attribute :supply_contact_role, Types::String
      attribute :supply_contact_identifier,
        Types::Collection,
        of: ProductContactIdentifier
      attribute :supply_contact_name, Types::String
      attribute :email_address, Types::String
    end
  end
end
