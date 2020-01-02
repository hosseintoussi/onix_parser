require_relative "supply_contact_identifier"
require_relative "code"

module OnixParser
  module Elements
    class SupplyContact < Base
      attribute :supply_contact_role, Code, list: "239"
      attribute :supply_contact_identifier,
        Types::Collection,
        of: ProductContactIdentifier
      attribute :supply_contact_name, Types::String
      attribute :email_address, Types::String
    end
  end
end
