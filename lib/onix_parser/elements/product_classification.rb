module OnixParser
  module Elements
    class ProductClassification < Base
      attribute :product_classification_type, Types::String
      attribute :product_classification_type_name, Types::String
      attribute :product_classification_code, Types::String
      attribute :percent, Types::String
    end
  end
end
