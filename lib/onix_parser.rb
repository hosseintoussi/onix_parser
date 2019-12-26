require "ox"
require "memory_profiler"
require "shallow_attributes"
require "pry"

require_relative "onix_parser/version"
require_relative "onix_parser/elements/base"
require_relative "onix_parser/elements/types/collection"
require_relative "onix_parser/elements/addressee"
require_relative "onix_parser/elements/addressee_identifier"
require_relative "onix_parser/elements/name_identifier"
require_relative "onix_parser/elements/alternative_name"
require_relative "onix_parser/elements/product_form_feature"
require_relative "onix_parser/elements/audience"
require_relative "onix_parser/elements/barcode"
require_relative "onix_parser/elements/collection_identifier"
require_relative "onix_parser/elements/collection_sequence"
require_relative "onix_parser/elements/collection"
require_relative "onix_parser/elements/contributor_date"
require_relative "onix_parser/elements/contributor"
require_relative "onix_parser/elements/epub_license_expression"
require_relative "onix_parser/elements/epub_usage_limit"
require_relative "onix_parser/elements/epub_usage_constraint"
require_relative "onix_parser/elements/epub_license"
require_relative "onix_parser/elements/extent"
require_relative "onix_parser/elements/language"
require_relative "onix_parser/elements/measure"
require_relative "onix_parser/elements/product_classification"
require_relative "onix_parser/elements/record_source_identifier"
require_relative "onix_parser/elements/sender"
require_relative "onix_parser/elements/sender_identifier"
require_relative "onix_parser/elements/product_identifier"
require_relative "onix_parser/elements/subject"
require_relative "onix_parser/elements/title_element"
require_relative "onix_parser/elements/title_detail"
require_relative "onix_parser/elements/header"
require_relative "onix_parser/elements/descriptive_detail"
require_relative "onix_parser/elements/product"
require_relative "onix_parser/utils/tags"
require_relative "onix_parser/utils/normalizer"

module OnixParser
  class Error < StandardError; end

  def self.parse
    data = File.read("onix.xml")
    hash = Ox.load(data, mode: :hash_no_attrs)
    normalized_hash = Utils::Normalizer.call(hash)
    Elements::Product.new(normalized_hash[:onix_message][:product].first)
    # normalized_hash[:onix_message][:product].map do |h|
    #   Elements::Product.new(h)
    # end
     # Elements::Header.new(normalized_hash[:onix_message][:header])
  end
end
