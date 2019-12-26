module OnixParser
  module Elements
    class ProductClassification < Base
      attribute :product_classification_type, String
      attribute :product_classification_type_name, String
      attribute :product_classification_code, String
      attribute :percent, String
    end
  end
end
