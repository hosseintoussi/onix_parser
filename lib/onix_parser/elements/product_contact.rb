require_relative "product_contact_identifier"

module OnixParser
  module Elements
    class ProductContact < Base
      attribute :product_contact_role, Types::String
      attribute :product_contact_identifier,
        Types::Collection,
        of: ProductContactIdentifier
      attribute :product_contact_name, Types::String
      attribute :email_address, Types::String
    end
  end
end
