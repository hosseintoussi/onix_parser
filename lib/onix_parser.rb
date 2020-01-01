require "ox"
require "memory_profiler"
require "ruby-prof"
require "pry"

require_relative "onix_parser/version"
require_relative "onix_parser/elements/base"
require_relative "onix_parser/elements/header"
require_relative "onix_parser/elements/product"
require_relative "onix_parser/utils/normalizer"

module OnixParser
  class Error < StandardError; end

  def self.parse
    # report = MemoryProfiler.report do
    # result = RubyProf.profile do
      data = File.read("onix.xml")
      hash = Ox.load(data, mode: :hash_no_attrs)
      normalized_hash = Utils::Normalizer.call(hash)
      Elements::Product.new(normalized_hash[:onix_message][:product].first)
      # normalized_hash[:onix_message][:product].map do |h|
      #   begin
      #     Elements::Product.new(h)
      #   rescue => e
      #     puts "==========error=========="
      #     puts h
      #     puts "==========error=========="
      #     puts e
      #     break
      #   end
      # end
    # end
    # printer = RubyProf::GraphPrinter.new(result)
    # printer.print(STDOUT, {})
    # report.pretty_print
      # Elements::Header.new(normalized_hash[:onix_message][:header])
  end

end
