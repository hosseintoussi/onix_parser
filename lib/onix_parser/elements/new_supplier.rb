require_relative "supplier_identifier"

module OnixParser
  module Elements
    class NewSupplier < Base
      attribute :supplier_identifier,
        Types::Collection,
        of: SupplierIdentifier
      attribute :supplier_name, String
      attribute :telephone_number, Types::Collection, of: String
      attribute :fax_number, Types::Collection, of: String
      attribute :email_address, Types::Collection, of: String
    end
  end
end
