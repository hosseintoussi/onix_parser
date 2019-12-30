module OnixParser
  module Elements
    class Code < Base
      CODELISTS_PATH = -"onix_parser/codelists/issue47"
      CODELISTS_CONST = -"OnixParser::Codelists::Issue47::LIST_"

      attribute :list, String
      attribute :value, String

      def coerce(value, options = {})
        self.list = ShallowAttributes::Type.coerce(String, options[:list])
        self.value = ShallowAttributes::Type.coerce(String, value)

        self
      end

      def humanize
        list_hash[self.value]
      end

      private

      def list_hash
        @list_hash ||=
          begin
            require File.join(CODELISTS_PATH, self.list.rjust(3, "0"))
            Object.const_get(CODELISTS_CONST + self.list)
          end
      end
    end
  end
end
