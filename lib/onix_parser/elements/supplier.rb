require_relative "supplier_identifier"
require_relative "website"

module OnixParser
  module Elements
    class Supplier < Base
      attribute :supplier_role, Types::String
      attribute :supplier_identifier, Types::Collection, of: SupplierIdentifier
      attribute :supplier_name, Types::String
      attribute :telephone_number, Types::Collection, of: Types::String
      attribute :fax_number, Types::Collection, of: Types::String
      attribute :email_address, Types::Collection, of: Types::String
      attribute :website, Types::Collection, of: Website
    end
  end
end
