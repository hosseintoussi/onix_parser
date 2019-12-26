module OnixParser
  module Elements
    class ProductIdentifier < Base
      attribute :product_id_type, String
      attribute :id_type_name, String
      attribute :id_value, String
    end
  end
end
