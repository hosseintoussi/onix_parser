require_relative "supplier_identifier"
require_relative "website"

module OnixParser
  module Elements
    class Supplier < Base
      attribute :supplier_role, String
      attribute :supplier_identifier, Types::Collection, of: SupplierIdentifier
      attribute :supplier_name, String
      attribute :telephone_number, Types::Collection, of: String
      attribute :fax_number, Types::Collection, of: String
      attribute :email_address, Types::Collection, of: String
      attribute :website, Types::Collection, of: Website
    end
  end
end
