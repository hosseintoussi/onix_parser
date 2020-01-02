require_relative "supplier_identifier"
require_relative "website"
require_relative "code"

module OnixParser
  module Elements
    class Supplier < Base
      attribute :supplier_role, Code, list: "93"
      attribute :supplier_identifier, Types::Collection, of: SupplierIdentifier
      attribute :supplier_name, Types::String
      attribute :telephone_number, Types::Collection, of: Types::String
      attribute :fax_number, Types::Collection, of: Types::String
      attribute :email_address, Types::Collection, of: Types::String
      attribute :website, Types::Collection, of: Website
    end
  end
end
