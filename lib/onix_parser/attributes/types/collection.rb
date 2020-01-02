module OnixParser
  module Attributes
    module Types
      class Collection
        def coerce(values, options = {})
          collection = values.is_a?(::Array) ? values : [values]
          klass = item_klass(options.delete(:of))

          collection.map! do |value|
            Types.coerce(klass, value, options)
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
