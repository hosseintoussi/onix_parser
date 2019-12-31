module OnixParser
  module Elements
    class ProductFormFeature < Base
      attribute :product_form_feature_type, Types::String
      attribute :product_form_feature_value, Types::String
      attribute :product_form_feature_description, Types::String
    end
  end
end
