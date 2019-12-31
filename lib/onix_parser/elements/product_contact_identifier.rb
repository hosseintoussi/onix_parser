module OnixParser
  module Elements
    class ProductContactIdentifier < Base
      attribute :product_contact_id_type, Types::String
      attribute :id_type_name, Types::String
      attribute :id_value, Types::String
    end
  end
end
