module OnixParser
  module Attributes
    module Types
      class String
        EMPTY_STRING = -""

        def coerce(value, _options = {})
          case value
          when nil then EMPTY_STRING
          when ::Array then value.join
          else
            value.respond_to?(:to_s) ? value.to_s : EMPTY_STRING
          end
        end
      end
    end
  end
end
