module OnixParser
  module Attributes
    module Types
      class Collection
        def coerce(values, options = {})
          collection = values.is_a?(::Array) ? values : [values]

          collection.map! do |value|
            Types.coerce(item_klass(options[:of]), value)
          end
        end

        private

        def item_klass(klass)
          return klass unless klass.is_a? ::String

          Object.const_get(klass)
        end
      end
    end
  end
end
