module OnixParser
  module Elements
    class EpubLicense < Base
      attribute :epub_license_name, Types::Collection, of: String
      attribute :epub_license_expression,
        Types::Collection,
        of: EpubLicenseExpression
    end
  end
end
