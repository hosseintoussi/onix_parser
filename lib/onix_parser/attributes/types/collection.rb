module OnixParser
  module Attributes
    module Types
      class Collection
        def coerce(values, options = {})
          collection = values.is_a?(::Array) ? values : [values]
          options = Hash[options]
          type = item_type(options.delete(:of))

          collection.map! do |value|
            Types.coerce(type, value, options)
          end
        end

        private

        def item_type(type)
          return type unless type.is_a? ::String

          Object.const_get(type)
        end
      end
    end
  end
end
