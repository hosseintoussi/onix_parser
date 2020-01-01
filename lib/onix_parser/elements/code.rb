module OnixParser
  module Elements
    class Code < Base
      TYPE = Types::String
      CODELISTS_PATH = -"onix_parser/codelists/issue47"
      CODELISTS_CONST = -"OnixParser::Codelists::Issue47::LIST_"
      ZERO = -"0"

      attribute :list, TYPE
      attribute :value, TYPE

      def coerce(value, options = {})
        self.list = Types.coerce(TYPE, options[:list])
        self.value = Types.coerce(TYPE, value)

        self
      end

      def humanize
        list_hash[value]
      end

      private

      def list_hash
        @list_hash ||=
        require File.join(CODELISTS_PATH, list.rjust(3, ZERO))
        Object.const_get(CODELISTS_CONST + list)
      end
    end
  end
end
