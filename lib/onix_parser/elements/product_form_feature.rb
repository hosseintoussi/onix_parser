require_relative "code"

module OnixParser
  module Elements
    class ProductFormFeature < Base
      attribute :product_form_feature_type, Code, list: "79"
      attribute :product_form_feature_value, Types::String
      attribute :product_form_feature_description, Types::String
    end
  end
end
