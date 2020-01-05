require "ox"
require "memory_profiler"
require "ruby-prof"
require "pry"

require_relative "onix_parser/elements/base"
require_relative "onix_parser/elements/message"
require_relative "onix_parser/utils/normalizer"

module OnixParser
  class Error < StandardError; end

  class << self
    def parse(file_name)
      # report = MemoryProfiler.report do
        # result = RubyProf.profile do
        normalized_onix_hash = parse_and_normalize(file_name)
        Elements::Message.new.tap do |message|
          message.header = normalized_onix_hash[:onix_message][:header]
          message.product = normalized_onix_hash[:onix_message][:product]
        end
      # end
      # printer = RubyProf::GraphPrinter.new(result)
      # printer.print(STDOUT, {})
      # report.pretty_print
      # Elements::Header.new(normalized_hash[:onix_message][:header])
    end

    private

    def parse_and_normalize(file_name)
      hash = Ox.load(File.read(file_name), mode: :hash_no_attrs)
      Utils::Normalizer.call(hash)
    end
  end
end
