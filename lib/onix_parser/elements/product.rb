module OnixParser
  module Elements
    class Product < Base
      attribute :record_reference, Types::String.optional
      attribute :product_identifier, Types::Array do
        attribute :product_id_type, Types::String.optional
        attribute :id_value, Types::String.optional
      end
    end
  end
end
