module OnixParser
  module Elements
    class Code < Base
      TYPE = Types::String
      CODELISTS_PATH = -"onix_parser/codelists/issue47"
      CODELISTS_CONST = -"OnixParser::Codelists::Issue47::LIST_"
      ZERO = -"0"
      EMPTY_HASH = {}.freeze

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
          begin
            require File.join(CODELISTS_PATH, list.rjust(3, ZERO))
            Object.const_get(CODELISTS_CONST + list)
          rescue LoadError
            EMPTY_HASH
          end
      end
    end
  end
end
