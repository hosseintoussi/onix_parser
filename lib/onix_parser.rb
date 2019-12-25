require "ox"
require "dry-struct"
require "memory_profiler"
require "pry"

require "onix_parser/version"
require "onix_parser/elements/base"
require "onix_parser/elements/product"
require "onix_parser/utils/tags"
require "onix_parser/utils/normalizer"

module OnixParser
  class Error < StandardError; end

  def self.parse
    data = File.read("onix.xml")
    binding.pry
    # hash = Ox.load(data, mode: :hash_no_attrs)
    # normalized_hash = Utils::Normalizer.call(hash)
    # normalized_hash[:onix_message][:product].map do |h|
    #   Elements::Product.new(h)
    # end
  end
end
