require_relative "code"

module OnixParser
  module Elements
    class ProductClassification < Base
      attribute :product_classification_type, Code, list: "9"
      attribute :product_classification_type_name, Types::String
      attribute :product_classification_code, Types::String
      attribute :percent, Types::String
    end
  end
end
