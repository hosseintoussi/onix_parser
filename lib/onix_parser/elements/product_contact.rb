require_relative "product_contact_identifier"
require_relative "code"

module OnixParser
  module Elements
    class ProductContact < Base
      attribute :product_contact_role, Code, list: "198"
      attribute :product_contact_identifier,
        Types::Collection,
        of: ProductContactIdentifier
      attribute :product_contact_name, Types::String
      attribute :contact_name, Types::String
      attribute :email_address, Types::String
    end
  end
end
