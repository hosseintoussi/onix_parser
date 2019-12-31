module OnixParser
  module Elements
    class Code < Base
      CODELISTS_PATH = -"onix_parser/codelists/issue47"
      CODELISTS_CONST = -"OnixParser::Codelists::Issue47::LIST_"

      attribute :list,  Types::String
      attribute :value,  Types::String

      def coerce(value, options = {})
        self.list = Types.coerce( Types::String, options[:list])
        self.value = Types.coerce( Types::String, value)

        self
      end

      def humanize
        list_hash[self.value]
      end

      private

      def list_hash
        @list_hash ||=
          require File.join(CODELISTS_PATH, self.list.rjust(3, "0"))
        Object.const_get(CODELISTS_CONST + self.list)
      end
    end
  end
end
