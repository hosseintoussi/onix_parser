require "net/http"
require "json"

module OnixParser
  module Utils
    class CodelistsExtractor

      def initialize(url, dir)
        @uri = URI(url)
        @dir = dir
      end

      def generate_files
        response = JSON.parse(Net::HTTP.get(uri))

        response["ONIXCodeTable"]["CodeList"].each do |codelist|
          generate_file_for(codelist)
        end
      end

      private

      attr_reader :dir, :uri

      def generate_file_for(codelist)
        codes = codelist["Code"].is_a?(::Array) ? codelist["Code"] : [codelist["Code"]].compact
        number = codelist["CodeListNumber"].to_s
        list_num = number.rjust(3, "0")
        file = list_num + ".rb"
        path = File.join(@dir, file)
        out = []
        out << "module OnixParser"
        out << "  module Codelists"
        out << "    module Issue47"
        out << "      LIST_#{number} = {"
        out << codes.map do |code|
          comma = code == codes.last ? "" : ","
          "        \"#{code["CodeValue"]}\" => \"#{code["CodeDescription"]}\"#{comma}"
        end
        out << "      }"
        out << "    end"
        out << "  end"
        out << "end"
        File.open(path, "w") { |f| f.write out.join("\n") }
      end
    end
  end
end
