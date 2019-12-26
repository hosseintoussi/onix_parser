module OnixParser
  module Elements
    class EpubLicenseExpression < Base
      attribute :epub_license_expression_type, String
      attribute :epub_license_expression_type_name, String
      attribute :epub_license_expression_link, String
    end
  end
end
