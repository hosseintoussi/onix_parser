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
require_relative "audience_range"

module OnixParser
  module Elements
    class DescriptiveDetail < Base
      attribute :product_composition, Types::String
      attribute :product_form, Types::String
      attribute :product_form_detail, Types::String
      attribute :product_form_feature, Types::Collection, of: ProductFormFeature
      attribute :product_packaging, Types::String
      attribute :product_form_description, Types::String
      attribute :trade_category, Types::String
      attribute :primary_content_type, Types::String
      attribute :product_content_type, Types::Collection, of: Types::String
      attribute :country_of_manufacture, Types::String
      attribute :epub_technical_protection, Types::Collection, of: Types::String
      attribute :epub_usage_constraint,
        Types::Collection,
        of: EpubUsageConstraint
      attribute :measure, Types::Collection, of: Measure
      attribute :epub_license, EpubLicense
      attribute :map_scale, Types::Collection, of: Types::String
      attribute :product_classification,
        Types::Collection,
        of: ProductClassification
      attribute :collection, Types::Collection, of: Collection
      attribute :title_detail, Types::Collection, of: TitleDetail
      attribute :contributor, Types::Collection, of: Contributor
      attribute :contributor_statement, Types::Collection, of: Types::String
      attribute :edition_type, Types::Collection, of: Types::String
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
