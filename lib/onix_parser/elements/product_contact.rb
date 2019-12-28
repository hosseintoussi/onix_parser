require_relative "product_contact_identifier"

module OnixParser
  module Elements
    class ProductContact < Base
      attribute :product_contact_role, String
      attribute :product_contact_identifier,
        Types::Collection,
        of: ProductContactIdentifier
      attribute :product_contact_name, String
      attribute :email_address, String
    end
  end
end
