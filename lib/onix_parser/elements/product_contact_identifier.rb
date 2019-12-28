module OnixParser
  module Elements
    class ProductContactIdentifier < Base
      attribute :product_contact_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
