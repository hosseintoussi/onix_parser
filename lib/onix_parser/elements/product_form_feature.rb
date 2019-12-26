module OnixParser
  module Elements
    class ProductFormFeature < Base
      attribute :product_form_feature_type, String
      attribute :product_form_feature_value, String
      attribute :product_form_feature_description, String
    end
  end
end
