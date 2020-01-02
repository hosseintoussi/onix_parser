require_relative "code"

module OnixParser
  module Elements
    class EpubLicenseExpression < Base
      attribute :epub_license_expression_type, Code, list: "218"
      attribute :epub_license_expression_type_name, Types::String
      attribute :epub_license_expression_link, Types::String
    end
  end
end
