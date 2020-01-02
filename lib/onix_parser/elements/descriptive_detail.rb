require_relative "product_form_feature"
require_relative "epub_usage_constraint"
require_relative "measure"
require_relative "epub_license"
require_relative "product_classification"
require_relative "title_detail"
require_relative "contributor"
require_relative "collection"
require_relative "extent"
require_relative "language"
require_relative "subject"
require_relative "audience"
require_relative "code"
require_relative "audience_range"

module OnixParser
  module Elements
    class DescriptiveDetail < Base
      attribute :product_composition, Code, list: "2"
      attribute :product_form, Code, list: "150"
      attribute :product_form_detail, Types::Collection, of: Code, list: "175"
      attribute :product_form_feature, Types::Collection, of: ProductFormFeature
      attribute :product_packaging, Code, list: "80"
      attribute :product_form_description, Types::Collection, of: Types::String
      attribute :trade_category, Code, list: "12"
      attribute :primary_content_type, Code, list: "81"
      attribute :product_content_type, Types::Collection, of: Code, list: "81"
      attribute :measure, Types::Collection, of: Measure
      attribute :country_of_manufacture, Code, list: "91"
      attribute :epub_technical_protection,
        Types::Collection,
        of: Code, list: "144"
      attribute :epub_usage_constraint,
        Types::Collection,
        of: EpubUsageConstraint
      attribute :epub_license, EpubLicense
      attribute :map_scale, Types::Collection, of: Types::String
      attribute :product_classification,
        Types::Collection,
        of: ProductClassification
      attribute :collection, Types::Collection, of: Collection
      attribute :title_detail, Types::Collection, of: TitleDetail
      attribute :contributor, Types::Collection, of: Contributor
      attribute :contributor_statement, Types::Collection, of: Types::String
      attribute :edition_type, Types::Collection, of: Code, list: "21"
      attribute :edition_number, Types::String
      attribute :edition_number_version, Types::String
      attribute :edition_statement, Types::Collection, of: Types::String
      attribute :language, Types::Collection, of: Language
      attribute :extent, Types::Collection, of: Extent
      attribute :subject, Types::Collection, of: Subject
      attribute :audience_code, Types::String
      attribute :audience, Types::Collection, of: Audience
      attribute :audience_range, Types::Collection, of: AudienceRange
    end
  end
end
