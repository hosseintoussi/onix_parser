module OnixParser
  module Elements
    class EpubLicenseExpression < Base
      attribute :epub_license_expression_type, Types::String
      attribute :epub_license_expression_type_name, Types::String
      attribute :epub_license_expression_link, Types::String
    end
  end
end
